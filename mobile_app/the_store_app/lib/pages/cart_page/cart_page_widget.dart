import 'package:auto_route/auto_route.dart';
import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/l10n/generated/app_localizations.dart';
import 'package:the_store_app/pages/components/basket_card.dart';
import 'package:the_store_app/pages/components/loading_indicator.dart';
import 'package:the_store_app/pages/components/search_widget.dart';
import 'package:the_store_app/router/app_router.dart';
import 'package:the_store_app/util/money_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'cart_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CartPage module
@RoutePage()
class CartPageWidget extends ElementaryWidget<ICartPageWidgetModel> {
  const CartPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCartPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICartPageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: !kIsWeb,
        title: Text(wm.localizations.basket),
        centerTitle: true,
      ),
      body: AnimatedBuilder(
        animation: wm.cartUseCase.profileUseCase.repository,
        builder: (context, _) {
          return EntityStateNotifierBuilder(
            listenableEntityState: wm.cartState,
            loadingBuilder: (_, __) {
              return const Center(
                child: LoadingIndicator(),
              );
            },
            builder: (context, data) {
              final localizations = AppLocalizations.of(context);
              final products = data?.products ?? [];

              final logIn = wm.cartUseCase.profileUseCase.repository.auth;
              var router = context.router;
              if (!logIn || products.isEmpty) {
                return Center(
                  child: Column(
                    children: [
                      Expanded(
                        flex: logIn ? 4 : 5,
                        child: Image.asset(
                          'assets/images/products.png',
                        ),
                      ),
                      Flexible(
                        child: Text(
                          logIn
                              ? localizations.emptyBasket
                              : 'Что бы заказать товар, '
                                  'Вам необходимо авторизоваться',
                          textAlign: TextAlign.center,
                          style: wm.textTheme.bodyLarge?.copyWith(
                            color: wm.colorScheme.onBackground,
                          ),
                        ),
                      ),
                      if (!logIn)
                        Expanded(
                          child: Center(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              height: 50,
                              child: FilledButton(
                                onPressed: () async {
                                  await router.pop();
                                  await router.navigate(AuthRoute());
                                },
                                child: Center(
                                  child: Text(
                                    localizations.login,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              }

              return EntityStateNotifierBuilder(
                listenableEntityState: wm.disabledCart,
                builder: (context, data) {
                  final off = data ?? {};
                  return ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return BasketCard(
                        cartProduct: products[index],
                        onTap: () => wm.openProduct(
                          product: products[index].product,
                        ),
                        onSelect: (value) =>
                            wm.onSelect(products[index], value),
                        checked: !off.contains(products[index].product.id),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AnimatedBuilder(
        animation: wm.cartUseCase.profileUseCase.repository,
        builder: (context, _) {
          final logIn = wm.cartUseCase.profileUseCase.repository.auth;

          if (!logIn) {
            return Container();
          }
          return EntityStateNotifierBuilder(
            listenableEntityState: wm.cartState,
            builder: (context, data) {
              final products = data?.products ?? [];
              final theme = Theme.of(context);
              final oldPrice = data?.oldPrice;

              return ValueListenableBuilder(
                valueListenable: wm.orderState,
                builder: (context, val, _) {
                  return Visibility(
                    visible: products.isNotEmpty,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Card(
                            margin: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'К оплате',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: theme.colorScheme.onBackground,
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: (data?.price ?? Decimal.zero)
                                          .formatMoney(),
                                      style:
                                          theme.textTheme.bodyMedium?.copyWith(
                                        color: theme.colorScheme.onBackground,
                                      ),
                                      children: [
                                        const TextSpan(
                                          text: ' ',
                                        ),
                                        if (oldPrice != null)
                                          TextSpan(
                                            text: oldPrice.formatMoney(),
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(
                                              color: theme
                                                  .colorScheme.onBackground,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: val ? wm.order : null,
                            child: SizedBox(
                              width: double.infinity,
                              child: val
                                  ? Text(
                                      wm.localizations.order,
                                      textAlign: TextAlign.center,
                                    )
                                  : const LoadingIndicator(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class SearchRow extends StatelessWidget implements PreferredSizeWidget {
  const SearchRow({
    Key? key,
    required this.controller,
    required this.height,
    required this.onSort,
    required this.active,
  }) : super(key: key);

  final TextEditingController controller;
  final double height;
  final VoidCallback? onSort;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height,
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: SearchWidget(
                controller: controller,
              ),
            ),
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(
                    child: IconButton(
                      icon: const Icon(
                        Icons.sort_rounded,
                      ),
                      onPressed: onSort,
                    ),
                  ),
                  if (active)
                    Positioned.fill(
                      top: 5,
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.fiber_manual_record,
                          size: 10,
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/domain/models/subscription.dart';
import 'package:the_store_app/pages/components/basket_card.dart';
import 'package:the_store_app/pages/components/loading_indicator.dart';
import 'package:the_store_app/pages/components/search_widget.dart';
import 'package:the_store_app/router/app_router.dart';
import 'package:the_store_app/util/money_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/l10n/generated/app_localizations.dart';
import 'subscription_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CartPage module
@RoutePage()
class SubscriptionPageWidget
    extends ElementaryWidget<ISubscriptionPageWidgetModel> {
  const SubscriptionPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultSubscriptionPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ISubscriptionPageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: !kIsWeb,
        title: const Text('Мои подписки'),
        centerTitle: true,
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.cartState,
        loadingBuilder: (_, __) {
          return const Center(
            child: LoadingIndicator(),
          );
        },
        builder: (context, data) {
          final localizations = AppLocalizations.of(context);
          final subscriptions = data ?? [];

          final logIn = wm.cartUseCase.profileUseCase.repository.auth;
          var router = context.router;
          if (!logIn || subscriptions.isEmpty) {
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
                          ? 'У вас не оформлено не одной подписки на продукты'
                          : 'Что бы посмотреть подписки, '
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
                          padding: const EdgeInsets.symmetric(horizontal: 16),
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

          return ListView.builder(
            itemCount: subscriptions.length,
            itemBuilder: (context, index) {
              return SubscriptionsWidget(
                subscription: subscriptions[index],
                onDelete: () => wm.deleteSubscription(
                  subscriptions[index],
                ),
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

class SubscriptionsWidget extends StatelessWidget {
  const SubscriptionsWidget({
    Key? key,
    required this.subscription,
    required this.onDelete,
  }) : super(key: key);

  final Subscription subscription;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Dismissible(
      key: ValueKey(subscription.id),
      direction: DismissDirection.horizontal,
      onDismissed: (_) => onDelete(),
      background: Container(
        color: Theme.of(context).colorScheme.error,
        child: Icon(
          Icons.remove_shopping_cart_outlined,
          color: Theme.of(context).colorScheme.onError,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          clipBehavior: Clip.hardEdge,
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.router.navigate(
                      ProductRoute(
                        productId: subscription.product.id,
                        product: subscription.product,
                      ),
                    );
                  },
                  child: AspectRatio(
                    aspectRatio: 1.0,
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: subscription.product.picture,
                      progressIndicatorBuilder: (_, __, ___) {
                        return const Center(
                          child: LoadingIndicator(),
                        );
                      },
                      errorWidget: (_, __, ___) {
                        return Image.asset(
                          'assets/images/products.png',
                          fit: BoxFit.fill,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Text(
                        subscription.product.name,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Цена:',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                          RichText(
                            textAlign: TextAlign.right,
                            text: TextSpan(
                              text: subscription.product.price.formatMoney(),
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onBackground,
                              ),
                              children: [
                                const TextSpan(
                                  text: ' ',
                                ),
                                if (subscription.product.oldPrice != null)
                                  TextSpan(
                                    text: (subscription.product.oldPrice ??
                                            Decimal.zero)
                                        .formatMoney(),
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: theme.colorScheme.onBackground,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Количество:',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                          Text(
                            subscription.count.toString(),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Оформлен:',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                          Text(
                            subscription.created_at.substring(
                              0,
                              subscription.created_at.indexOf('T'),
                            ),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Повтор:',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                          Text(
                            '${subscription.repeated_days} дня',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Повтор:',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                          Text(
                            '${subscription.repeated_days} дня',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

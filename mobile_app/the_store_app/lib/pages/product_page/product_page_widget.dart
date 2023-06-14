import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:the_store_app/domain/entity/cart/cart_update.dart';
import 'package:the_store_app/domain/models/product.dart';
import 'package:the_store_app/domain/models/product_detail.dart';
import 'package:the_store_app/l10n/generated/app_localizations.dart';
import 'package:the_store_app/internal/app_components.dart';
import 'package:the_store_app/pages/components/auth_bottom_sheet.dart';
import 'package:the_store_app/pages/components/favourite_button.dart';
import 'package:the_store_app/pages/components/loading_indicator.dart';
import 'package:the_store_app/router/app_router.dart';
import 'package:the_store_app/util/money_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'product_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ProductPage module
@RoutePage()
class ProductPageWidget extends ElementaryWidget<IProductPageWidgetModel> {
  const ProductPageWidget({
    Key? key,
    @queryParam this.heroTag,
    this.product,
    @pathParam required this.productId,
    WidgetModelFactory wmFactory = defaultProductPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final int productId;
  final Product? product;
  final String? heroTag;

  @override
  Widget build(IProductPageWidgetModel wm) {
    if (product == null) {
      return const Center(
        child: LoadingIndicator(),
      );
    }

    return Scaffold(
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.productState,
        loadingBuilder: (context, data) {
          return _ProductPriview(
            product: product,
          );
        },
        builder: (context, data) {
          final theme = Theme.of(context);
          final product = data;
          final oldPrice = this.product?.oldPrice;

          if (product == null) {
            return const Center(
              child: LoadingIndicator(),
            );
          }

          return CustomScrollView(
            slivers: [
              if (!kIsWeb)
                SliverAppBar(
                  // automaticallyImplyLeading: !kIsWeb,
                  expandedHeight: 300,
                  leading: const BackButton(
                    color: Colors.black,
                  ),
                  actions: [
                    FavouriteButton(
                      product: product,
                      productId: product.id,
                      size: 30,
                      favourite: false,
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: product.picture ?? '',
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
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      if (kIsWeb)
                        Positioned.fill(
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl: product.picture ?? '',
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
                      const SizedBox(height: 5),
                      Text(
                        product.name,
                        style: theme.textTheme.displaySmall?.copyWith(
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: product.price.formatMoney(),
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onBackground,
                          ),
                          children: [
                            const TextSpan(
                              text: ' ',
                            ),
                            if (oldPrice != null)
                              TextSpan(
                                text: oldPrice.formatMoney(),
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onBackground,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                          ],
                        ),
                      ),
                      _BsketButton(
                        product: product,
                      ),
                      Text(
                        product.description ?? '',
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _BsketButton extends StatelessWidget {
  const _BsketButton({
    required this.product,
  });

  final ProductDetail product;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final cartUseCase = AppComponents().cartUseCase;
    final profileUseCase = AppComponents().profileUseCase;
    return StreamBuilder(
      initialData: cartUseCase.cart.valueOrNull,
      stream: cartUseCase.cart.stream,
      builder: (context, snapshot) {
        final products = snapshot.data?.products ?? [];
        final id = product.id;
        final cartProduct =
            products.where((p) => p.product.id == id).firstOrNull;

        if (cartProduct == null) {
          return FilledButton(
            child: Text(
              localizations.order,
            ),
            onPressed: () {
              if (!profileUseCase.repository.auth) {
                showModalBottomSheet(
                  context: context.router.root.navigatorKey.currentContext!,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                  ),
                  builder: (context) => const AuthBottomSheet(),
                );
                return;
              }
              FirebaseAnalytics.instance.logAddToCart(
                currency: 'RUB',
                value:
                    product.price.toDouble() * ((cartProduct?.count ?? 0) + 1),
                items: [
                  AnalyticsEventItem(
                    currency: 'RUB',
                    quantity: (cartProduct?.count ?? 0) + 1,
                    itemId: product.id.toString(),
                    itemName: product.name,
                    price: product.price.toDouble(),
                    discount:
                        ((product.oldPrice ?? product.price) - product.price)
                            .toDouble(),
                  ),
                ],
              );
              cartUseCase.postCart(
                request: CartUpdate(
                  productId: product.id,
                ),
              );
            },
          );
        }

        return Row(
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {
                  if (cartProduct.count != 1) {
                    FirebaseAnalytics.instance.logRemoveFromCart(
                      currency: 'RUB',
                      value: cartProduct.product.price.toDouble() *
                          (cartProduct.count - 1),
                      items: [
                        AnalyticsEventItem(
                          currency: 'RUB',
                          itemId: cartProduct.product.id.toString(),
                          itemName: cartProduct.product.name,
                          quantity: cartProduct.count - 1,
                          price: cartProduct.product.price.toDouble(),
                          discount: ((cartProduct.product.oldPrice ??
                                      cartProduct.product.price) -
                                  cartProduct.product.price)
                              .toDouble(),
                        ),
                      ],
                    );
                    cartUseCase.addProductCount(
                      request: CartUpdate(
                        productId: product.id,
                        count: cartProduct.count - 1,
                      ),
                    );
                  } else {
                    FirebaseAnalytics.instance.logRemoveFromCart(
                      currency: 'RUB',
                      value: cartProduct.product.price.toDouble() *
                          (cartProduct.count - 1),
                      items: [
                        AnalyticsEventItem(
                          currency: 'RUB',
                          quantity: cartProduct.count - 1,
                          itemId: cartProduct.product.id.toString(),
                          itemName: cartProduct.product.name,
                          price: cartProduct.product.price.toDouble(),
                          discount: ((cartProduct.product.oldPrice ??
                                      cartProduct.product.price) -
                                  cartProduct.product.price)
                              .toDouble(),
                        ),
                      ],
                    );
                    cartUseCase.deleteCart(
                      request: CartUpdate(
                        productId: product.id,
                      ),
                    );
                  }
                },
                icon: Icon(
                  cartProduct.count == 1
                      ? Icons.remove_shopping_cart
                      : Icons.remove,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: FilledButton(
                onPressed: () {
                  final data = AppComponents().cartUseCase.cart.valueOrNull;
                  if (data != null) {
                    FirebaseAnalytics.instance.logViewCart(
                      currency: 'RUB',
                      value: data.price.toDouble(),
                      items: data.products
                          .map(
                            (p) => AnalyticsEventItem(
                                currency: 'RUB',
                                itemId: p.product.id.toString(),
                                itemName: p.product.name,
                                quantity: p.count,
                                price: p.product.price.toDouble(),
                                discount:
                                    ((p.product.oldPrice ?? p.product.price) -
                                            p.product.price)
                                        .toDouble()),
                          )
                          .toList(),
                    );
                  }
                  context.router.navigate(
                    const BasketTab(),
                  );
                },
                child: Text('В корзине: ${cartProduct.count}'),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  FirebaseAnalytics.instance.logAddToCart(
                    currency: 'RUB',
                    value: cartProduct.product.price.toDouble() *
                        (cartProduct.count + 1),
                    items: [
                      AnalyticsEventItem(
                        currency: 'RUB',
                        quantity: cartProduct.count + 1,
                        itemId: cartProduct.product.id.toString(),
                        itemName: cartProduct.product.name,
                        price: cartProduct.product.price.toDouble(),
                        discount: ((cartProduct.product.oldPrice ??
                                    cartProduct.product.price) -
                                cartProduct.product.price)
                            .toDouble(),
                      ),
                    ],
                  );
                  cartUseCase.addProductCount(
                    request: CartUpdate(
                      productId: product.id,
                      count: cartProduct.count + 1,
                    ),
                  );
                },
                icon: const Icon(Icons.add),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ProductPriview extends StatelessWidget {
  const _ProductPriview({
    this.product,
  });

  final Product? product;

  @override
  Widget build(BuildContext context) {
    final product = this.product;
    final oldPrice = this.product?.oldPrice;
    final theme = Theme.of(context);

    if (product == null) {
      return const Center(
        child: LoadingIndicator(),
      );
    }

    return CustomScrollView(
      slivers: [
        if (!kIsWeb)
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: product.picture,
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
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                if (kIsWeb)
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: product.picture,
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
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBarIndicator(
                      rating: product.rating?.toDouble() ?? 0,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 25.0,
                      physics: const NeverScrollableScrollPhysics(),
                      direction: Axis.horizontal,
                    ),
                    FavouriteButton(
                      product: product,
                      productId: product.id,
                      favourite: false,
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  product.name,
                  style: theme.textTheme.displaySmall?.copyWith(
                    color: theme.colorScheme.onBackground,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: product.price.formatMoney(),
                    style: theme.textTheme.displaySmall?.copyWith(
                      color: theme.colorScheme.onBackground,
                    ),
                    children: [
                      const TextSpan(
                        text: ' ',
                      ),
                      if (oldPrice != null)
                        TextSpan(
                          text: oldPrice.formatMoney(),
                          style: theme.textTheme.displaySmall?.copyWith(
                            color: theme.colorScheme.onBackground,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

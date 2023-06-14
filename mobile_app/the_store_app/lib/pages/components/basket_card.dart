import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:the_store_app/domain/entity/cart/cart_product.dart';
import 'package:the_store_app/domain/entity/cart/cart_update.dart';
import 'package:the_store_app/internal/app_components.dart';
import 'package:the_store_app/pages/components/loading_indicator.dart';
import 'package:the_store_app/util/money_extensions.dart';
import 'package:flutter/material.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({
    Key? key,
    required this.cartProduct,
    this.onSelect,
    required this.checked,
    required this.onTap,
  }) : super(key: key);

  final CartProduct cartProduct;
  final bool checked;
  final ValueChanged<bool?>? onSelect;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cartUseCase = AppComponents().cartUseCase;
    final oldPrice = cartProduct.product.price;
    return ListTile(
      onTap: onTap,
      leading: AspectRatio(
        aspectRatio: 1.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: cartProduct.product.picture,
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
      title: Text(
        '${cartProduct.product.name} (${cartProduct.count} ед.)',
        style: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.onBackground,
        ),
      ),
      subtitle: RichText(
        text: TextSpan(
          text: cartProduct.product.price.formatMoney(),
          style: theme.textTheme.bodyMedium?.copyWith(
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
      trailing: SizedBox(
        width: 150,
        child: Row(
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
                        productId: cartProduct.product.id,
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
                    cartUseCase.deleteCart(
                      request: CartUpdate(
                        productId: cartProduct.product.id,
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
            if (FirebaseRemoteConfig.instance.getBool('has_cart_item_select'))
              Expanded(
                child: Checkbox(
                  activeColor: Colors.black,
                  value: checked,
                  onChanged: onSelect,
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
                      productId: cartProduct.product.id,
                      count: cartProduct.count + 1,
                    ),
                  );
                },
                icon: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

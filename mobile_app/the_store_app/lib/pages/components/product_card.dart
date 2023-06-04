import 'package:cached_network_image/cached_network_image.dart';
import 'package:the_store_app/domain/models/product.dart';
import 'package:the_store_app/pages/components/favourite_button.dart';
import 'package:the_store_app/util/money_extensions.dart';
import 'package:flutter/material.dart';

import 'loading_indicator.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    this.onTap,
    this.favourite = true,
    this.onFavoutiteTap,
    this.addToBasket,
  }) : super(key: key);

  final bool favourite;
  final Product product;
  final VoidCallback? onTap;
  final VoidCallback? addToBasket;
  final VoidCallback? onFavoutiteTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1.0,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: GestureDetector(
                  onTap: onTap,
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
              ),
              Positioned(
                top: 5,
                right: 5,
                child: FavouriteButton(
                  productId: product.id,
                  favourite: favourite,
                  onTap: onFavoutiteTap,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: _ProductDescription(
            onTap: onTap,
            addToBasket: addToBasket,
            onFavoutiteTap: onFavoutiteTap,
            product: product,
            favourite: favourite,
          ),
        )
      ],
    );
  }
}

class _ProductDescription extends StatelessWidget {
  const _ProductDescription({
    required this.product,
    this.onTap,
    this.onFavoutiteTap,
    this.addToBasket,
    required this.favourite,
  });

  final bool favourite;
  final Product product;
  final VoidCallback? onTap;
  final VoidCallback? onFavoutiteTap;
  final VoidCallback? addToBasket;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final oldPrice = product.oldPrice;
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: FittedBox(
              child: Text(
                product.name,
                style: theme.textTheme.bodyLarge
                    ?.copyWith(color: theme.colorScheme.onBackground),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: FittedBox(
                    child: RichText(
                      text: TextSpan(
                        text: product.price.formatMoney(),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onBackground,
                        ),
                        children: [
                          const TextSpan(
                            text: '\n',
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
                  ),
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const CircleBorder(
                      side: BorderSide(color: Colors.black)
                    )
                  ),
                  onPressed: addToBasket,
                  child: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }


}

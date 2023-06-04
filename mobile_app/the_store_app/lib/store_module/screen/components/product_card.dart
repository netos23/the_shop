
import 'package:flutter/material.dart';
import 'package:the_store_app/store_module/entity/entity.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.product,
      this.selected = false,
      required this.onFavourite,
      required this.onBasket});

  final ShortProduct product;

  final bool selected;
  final VoidCallback? onFavourite;
  final VoidCallback? onBasket;

  @override
  Widget build(BuildContext context) {
    var selectedIcon = Icon(
      Icons.favorite,
      size: 30,
      color: Theme.of(context).colorScheme.error,
    );
    var base = Icon(
      Icons.favorite_outline,
      size: 30,
      color: Theme.of(context).colorScheme.onPrimary,
    );
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                  'https://sun1-84.userapi.com/impg/s31zgiWeIP1bd05ZjO1rwrtTFkxHi6ctHyPywg/a5asFHOCI0w.jpg?size=604x604&quality=95&sign=c06469a922f1ea98d288682d83609728&c_uniq_tag=DRZBGUDGWaLnmgYSDNYGOAbw61X3F1m04B63mMLRFXI&type=album'),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  icon: selected ? selectedIcon : base,
                  onPressed: () => onFavourite,
                ),
              )
            ],
          ),
          Text(
            product.productName,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.left,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("${product.productPrice} ₽"),
              InkWell(
                onTap: () => onBasket,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

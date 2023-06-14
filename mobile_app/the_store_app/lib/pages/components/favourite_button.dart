import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

final fav = <int>{};
final favController = StreamController<Set<int>>.broadcast();

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({
    Key? key,
    required this.favourite,
    this.onTap,
    required this.productId,
    this.size = 15,
    this.product,
  }) : super(key: key);
  final bool favourite;
  final int productId;
  final VoidCallback? onTap;
  final double size;
  final dynamic product;

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  @override
  void initState() {
    super.initState();
    loadFavourite();
  }

  Future<void> loadFavourite() async {
    final inst = await SharedPreferences.getInstance();

    final favourite = inst.getBool('fav-${widget.productId}') ?? false;
    if (favourite) {
      fav.add(widget.productId);
      favController.add(Set.of(fav));
    } else {
      fav.remove(widget.productId);
      favController.add(Set.of(fav));
    }
  }

  Future<void> saveFavourites() async {
    final favourite = fav.contains(widget.productId);
    if (favourite) {
      fav.remove(widget.productId);
      favController.add(Set.of(fav));
    } else {
      fav.add(widget.productId);
      favController.add(Set.of(fav));
    }
    final inst = await SharedPreferences.getInstance();
    inst.setBool('fav-${widget.productId}', !favourite);
    await FirebaseAnalytics.instance.logAddToWishlist(
      currency: 'RUB',
      value: widget.product?.price?.toDouble(),
      items: [
        AnalyticsEventItem(
          currency: 'RUB',
          itemId: widget.product?.id?.toString(),
          itemName: widget.product?.name,
          price: widget.product?.price?.toDouble(),
          discount: ((widget.product?.oldPrice ?? widget.product?.price) -
                  widget.product?.price)
              .toDouble(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return StreamBuilder(
        stream: favController.stream,
        builder: (context, snapshot) {
          var favs = snapshot.data ?? {};
          final favourite = favs.contains(widget.productId);
          return IconButton(
            onPressed: () {
              saveFavourites();
            },
            icon: Icon(
              favourite ? Icons.favorite : Icons.favorite_outline,
              size: widget.size,
              color: favourite
                  ? theme.colorScheme.error
                  : theme.colorScheme.onSurface,
            ),
          );
        });
  }
}

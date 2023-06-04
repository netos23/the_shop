import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({
    Key? key,
    required this.favourite,
    this.onTap,
    required this.productId,
    this.size = 15,
  }) : super(key: key);
  final bool favourite;
  final int productId;
  final VoidCallback? onTap;
  final double size;

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool _favourite = false;

  @override
  void initState() {
    super.initState();
    loadFavourite();
  }

  Future<void> loadFavourite() async {
    final inst = await SharedPreferences.getInstance();
    setState(() {
      _favourite = inst.getBool('fav-${widget.productId}') ?? false;
    });
  }

  Future<void> saveFavourites() async {
    final inst = await SharedPreferences.getInstance();
    inst.setBool('fav-${widget.productId}', _favourite);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      onPressed: () {
        setState(() {
          _favourite = !_favourite;
        });
        saveFavourites();
      },
      icon: Icon(
        _favourite ? Icons.favorite : Icons.favorite_outline,
        size: widget.size,
        color:
            _favourite ? theme.colorScheme.error : theme.colorScheme.onSurface,
      ),
    );
  }
}

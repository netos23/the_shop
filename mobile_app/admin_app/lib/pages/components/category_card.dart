import 'package:cached_network_image/cached_network_image.dart';
import 'package:admin_app/domain/models/category.dart';
import 'package:admin_app/pages/components/loading_indicator.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
    this.onTap,
  }) : super(key: key);
  final Category category;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final url = category.picture;
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        height: 150,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: url ?? '',
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
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    category.name,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onBackground,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
            Icon(
              Icons.navigate_next,
            ),
          ],
        ),
      ),
    );
  }
}

class SmallCategoryCard extends StatelessWidget {
  const SmallCategoryCard({
    Key? key,
    required this.category,
    this.onTap,
  }) : super(key: key);
  final Category category;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final url = category.picture;
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: url ?? '',
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
            const SizedBox(width: 10,),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  category.name,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onBackground,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            Icon(
              Icons.navigate_next,
            ),
          ],
        ),
      ),
    );
  }
}

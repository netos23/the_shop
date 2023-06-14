import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/domain/models/sorts.dart';
import 'package:the_store_app/l10n/generated/app_localizations.dart';
import 'package:the_store_app/pages/components/loading_indicator.dart';
import 'package:the_store_app/pages/components/product_card.dart';
import 'package:the_store_app/pages/components/search_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'catalog_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CatalogPage module
@RoutePage()
class FavouritePageWidget extends ElementaryWidget<IFavouritePageWidgetModel> {
  const FavouritePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultFavouritePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IFavouritePageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: !kIsWeb,
        title: Text('Избранное'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: EntityStateNotifierBuilder(
            listenableEntityState: wm.sortState,
            builder: (context, data) {
              return SearchRow(
                controller: wm.searchController,
                onSort: wm.openSort,
                height: 90,
                active: data != null,
                sort: data ?? Sort.sorts['ru']!.first,
              );
            },
          ),
        ),
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.productsState,
        loadingBuilder: (_, __) {
          return const Center(
            child: LoadingIndicator(),
          );
        },
        builder: (context, data) {
          final localizations = AppLocalizations.of(context);
          final products = data ?? [];

          if (products.isEmpty) {
            return Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Image.asset(
                      'assets/images/products.png',
                    ),
                  ),
                  Flexible(
                    child: Text(
                      localizations.emptyProducts,
                      textAlign: TextAlign.center,
                      style: wm.textTheme.bodyLarge?.copyWith(
                        color: wm.colorScheme.onBackground,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          return GridView.builder(
            itemCount: products.length,
            gridDelegate: kIsWeb
                ? const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 12.99 / 18,
                  )
                : const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 11 / 18,
                  ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return ProductCard(
                product: products[index],
                favourite: index.isOdd,
                onFavoutiteTap: () {},
                addToBasket: () => wm.addToBasket(products[index]),
                onTap: () => wm.openProduct(
                  product: products[index],
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
    required this.sort,
  }) : super(key: key);

  final Sort sort;
  final TextEditingController controller;
  final double height;
  final VoidCallback? onSort;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: height,
        child: Column(
          children: [
            InkWell(
              onTap: onSort,
              child: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      sort.name.toUpperCase(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const Icon(Icons.expand_more),
                  ],
                ),
              ),
            ),
            SearchWidget(
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

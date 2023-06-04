import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/entity/catalog/catalog_export.dart';
import 'package:the_store_app/screens/components/components.dart';
import 'package:the_store_app/screens/components/custom_filled_button_widget.dart';
import 'package:the_store_app/screens/components/product_card.dart';
import 'favourites_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for FavouritesScreen module
@RoutePage()
class FavouritesScreenWidget
    extends ElementaryWidget<IFavouritesScreenWidgetModel> {
  const FavouritesScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultFavouritesScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IFavouritesScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Избранное",
          style: wm.textTheme.titleMedium,
        ),
        centerTitle: true,
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.productsState,
        loadingBuilder: (context, state) {
          return const Center(
            child: PreloaderCircleIndicator(),
          );
        },
        builder: (context, state) {
          final products = state ?? [];
          
          final List<Widget> productsWidgets = [];
          for(int i = 0; i < products.length; i++){
            productsWidgets.add(ProductCard(
              product: products[i],
              selected: true,
              onBasket: () => wm.addToBasket(products[i].id),
              onFavourite: () => wm.deleteFromFavourite(products[i].id),
            ));
            //не придумал норм stream
          }
          
          if (products.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "В вашем избранном пока ничего нет",
                  style: wm.textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: CustomFilledButton(onTap: () => wm.toCatalog(), text: "ПЕРЕЙТИ К ПОКУПКАМ"),
                )
              ],
            );
          }

          return GridView.count(
            crossAxisCount: 2,
              childAspectRatio: 390/520,
              children: productsWidgets,
          );
        },
      ),
    );
  }
}

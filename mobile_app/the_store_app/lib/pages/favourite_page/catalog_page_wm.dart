import 'package:auto_route/auto_route.dart';
import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:the_store_app/data/service/catalog_service.dart';
import 'package:the_store_app/domain/entity/cart/cart_update.dart';
import 'package:the_store_app/domain/entity/catalog/catalog_products_request.dart';
import 'package:the_store_app/domain/models/product.dart';
import 'package:the_store_app/domain/models/sorts.dart';
import 'package:the_store_app/l10n/generated/app_localizations.dart';
import 'package:the_store_app/internal/app_components.dart';
import 'package:the_store_app/internal/logger.dart';
import 'package:the_store_app/pages/components/favourite_button.dart';
import 'package:the_store_app/router/app_router.dart';
import 'package:the_store_app/util/snack_bar_util.dart';
import 'package:the_store_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'catalog_page_model.dart';
import 'catalog_page_widget.dart';

abstract class IFavouritePageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<List<Product>> get productsState;

  EntityStateNotifier<Sort> get sortState;

  TextEditingController get searchController;

  ScrollController get scrollController;

  void openSort();

  void openProduct({required Product product});

  void addToBasket(Product product);
}

CatalogPageWidgetModel defaultFavouritePageWidgetModelFactory(
    BuildContext context) {
  return CatalogPageWidgetModel(
    model: FavouritePageModel(),
    catalogService: AppComponents().catalogService,
  );
}

// TODO: cover with documentation
/// Default widget model for CatalogPageWidget
class CatalogPageWidgetModel
    extends WidgetModel<FavouritePageWidget, FavouritePageModel>
    with ThemeProvider
    implements IFavouritePageWidgetModel {
  final CatalogService catalogService;
  @override
  final productsState = EntityStateNotifier();

  @override
  final scrollController = ScrollController();

  @override
  final searchController = TextEditingController();

  @override
  final sortState = EntityStateNotifier();

  bool _hasNext = true;
  bool _loading = false;
  int _nextPage = 1;

  CatalogPageWidgetModel({
    required FavouritePageModel model,
    required this.catalogService,
  }) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    productsState.loading();
    searchController.addListener(loadProducts);
    favController.stream.listen((event) {
      loadProducts();
    });

    loadProducts();
  }

  Future<void> loadProducts([bool refresh = true]) async {
    if (fav.isEmpty) {
      productsState.content(
        [],
      );
      return;
    }

    if (!_hasNext && !refresh) {
      return;
    }

    if (refresh) {
      _nextPage = 1;
      _hasNext = true;
    }

    final List<Product> currentProducts =
        refresh ? [] : productsState.value?.data ?? [];
    final selected = sortState.value?.data;

    try {
      _loading = true;

      final products = await catalogService.getProducts(
        page: _nextPage,
        size: 4,
        request: CatalogProductsRequest(
          sortBy: selected?.key,
          categoryIds: [],
          productIds: fav.toList(),
        ),
      );
      currentProducts.addAll(products.results);
      productsState.content(
        List.of(currentProducts),
      );
      _loading = false;
      _nextPage++;
      _hasNext = products.next != null;
    } catch (e, s) {
      logger.e('Catalog error', e, s);

      if (isMounted) {
        context.showSnackBar('Не удалось загрузить продукты');
      }
    }
  }

  @override
  void dispose() {
    searchController.removeListener(loadProducts);
    searchController.dispose();
    productsState.dispose();
    super.dispose();
  }

  @override
  void openSort() {
    showModalBottomSheet(
      context: router.root.navigatorKey.currentContext!,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
      builder: _buildContent,
    );
  }

  Widget _buildContent(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final selected = sortState.value?.data;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            localizations.sort,
            style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurface,
                overflow: TextOverflow.ellipsis),
          ),
        ),
        ...Sort.sorts[localizations.localeName]!.map(
          (s) => ListTile(
            onTap: () {
              _setSort(s, context);
            },
            leading: Checkbox.adaptive(
              value: s == selected,
              onChanged: (bool? value) {
                _setSort(s, context);
              },
            ),
            title: Text(
              s.name,
              style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
        ),
      ],
    );
  }

  void _setSort(Sort s, BuildContext context) {
    sortState.content(s);
    loadProducts();
    context.router.root.pop();
  }

  @override
  void openProduct({
    required Product product,
  }) {
    context.router.navigate(
      ProductRoute(
        productId: product.id,
        product: product,
      ),
    );
  }

  @override
  void addToBasket(Product product) {
    final cartUseCase = AppComponents().cartUseCase;
    final cartProduct = cartUseCase.cart.valueOrNull?.products
        .where((p) => p.product.id == product.id)
        .firstOrNull;
    FirebaseAnalytics.instance.logAddToCart(
      currency: 'RUB',
      value: product.price.toDouble() * ((cartProduct?.count ?? 0) + 1),
      items: [
        AnalyticsEventItem(
          currency: 'RUB',
          quantity: (cartProduct?.count ?? 0) + 1,
          itemId: product.id.toString(),
          itemName: product.name,
          price: product.price.toDouble(),
          discount:
              ((product.oldPrice ?? product.price) - product.price).toDouble(),
        ),
      ],
    );
    cartUseCase.addProductCount(
      request: CartUpdate(
        productId: product.id,
        count: ((cartProduct?.count ?? 0)) + 1,
      ),
    );
  }
}

import 'package:elementary/elementary.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:the_store_app/data/service/cart_service.dart';
import 'package:the_store_app/data/service/catalog_service.dart';
import 'package:the_store_app/domain/entity/cart/cart_update.dart';
import 'package:the_store_app/domain/models/product_detail.dart';
import 'package:the_store_app/domain/use_case/cart_use_case.dart';
import 'package:the_store_app/internal/app_components.dart';
import 'package:the_store_app/internal/logger.dart';
import 'package:the_store_app/util/snack_bar_util.dart';
import 'package:the_store_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'product_page_model.dart';
import 'product_page_widget.dart';

abstract class IProductPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<ProductDetail> get productState;
}

ProductPageWidgetModel defaultProductPageWidgetModelFactory(
    BuildContext context) {
  return ProductPageWidgetModel(
    model: ProductPageModel(),
    catalogService: AppComponents().catalogService,
    cartUseCase: AppComponents().cartUseCase,
  );
}

// TODO: cover with documentation
/// Default widget model for ProductPageWidget
class ProductPageWidgetModel
    extends WidgetModel<ProductPageWidget, ProductPageModel>
    with ThemeProvider
    implements IProductPageWidgetModel {
  ProductPageWidgetModel({
    required ProductPageModel model,
    required this.catalogService,
    required this.cartUseCase,
  }) : super(model);

  final CatalogService catalogService;
  final CartUseCase cartUseCase;
  @override
  final productState = EntityStateNotifier();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    loadProduct();
  }

  Future<void> loadProduct() async {
    try {
      productState.loading();
      final product = await catalogService.getProduct(
        productId: widget.productId,
      );
      FirebaseAnalytics.instance.logViewItem(
        currency: 'RUB',
        value: product.price.toDouble(),
        items: [
          AnalyticsEventItem(
              currency: 'RUB',
              itemId: product.id.toString(),
              itemName: product.name,
              itemBrand: product.brand,
              price: product.price.toDouble(),
              discount: ((product.oldPrice ?? product.price) - product.price)
                  .toDouble()),
        ],
      );
      productState.content(product);
    } catch (e, s) {
      logger.e('Catalog error', e, s);
      context.showSnackBar('Не удалось загрузить продукты');
    }
  }

  @override
  void dispose() {
    productState.dispose();
    super.dispose();
  }
}

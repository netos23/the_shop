import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:admin_app/data/service/catalog_service.dart';
import 'package:admin_app/domain/entity/catalog/catalog_categories_request.dart';
import 'package:admin_app/domain/models/category.dart';
import 'package:admin_app/internal/app_components.dart';
import 'package:admin_app/internal/logger.dart';
import 'package:admin_app/router/app_router.dart';
import 'package:admin_app/util/snack_bar_util.dart';
import 'package:admin_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'category_page_model.dart';
import 'category_page_widget.dart';

abstract class ICategoryPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<List<Category>> get categoryState;

  void openCategory(Category subcategory);
}

CategoryPageWidgetModel defaultCategoryPageWidgetModelFactory(
    BuildContext context) {
  return CategoryPageWidgetModel(
    model: CategoryPageModel(),
    catalogService: AppComponents().catalogService,
  );
}

// TODO: cover with documentation
/// Default widget model for CategoryPageWidget
class CategoryPageWidgetModel
    extends WidgetModel<CategoryPageWidget, CategoryPageModel>
    with ThemeProvider
    implements ICategoryPageWidgetModel {
  CategoryPageWidgetModel({
    required CategoryPageModel model,
    required this.catalogService,
  }) : super(model);

  @override
  final categoryState = EntityStateNotifier();
  final CatalogService catalogService;

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    final categories = widget.category?.subcategories ?? [];
    if (categories.isNotEmpty) {
      categoryState.content(categories);
    } else {
      loadCategories();
    }
  }

  Future<void> loadCategories() async {
    try {
      categoryState.loading();
      final categories = await catalogService.getCategories(
        request: CatalogCategoriesRequest(
          id: widget.categoryId,
        ),
      );

      categoryState.content(categories);
    } catch (e, s) {
      logger.e('Catalog error', e, s);
      context.showSnackBar('Не удалось загрузить категории');
    }
  }

  @override
  void dispose() {
    categoryState.dispose();
    super.dispose();
  }

  @override
  void openCategory(Category category) {
    final subcategories = category.subcategories;
    if (subcategories != null && subcategories.isNotEmpty) {
      context.router.push(
        CategoryRoute(
          categoryId: category.id,
          title: category.name,
          category: category,
        ),
      );
    } else {
      context.router.push(
        CatalogRoute(
          title: category.name,
          categotyId: category.id,
        ),
      );
    }
  }
}

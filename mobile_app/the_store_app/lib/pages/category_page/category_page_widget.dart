import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/domain/models/category.dart';
import 'package:the_store_app/l10n/generated/app_localizations.dart';
import 'package:the_store_app/pages/components/category_card.dart';
import 'package:the_store_app/pages/components/loading_indicator.dart';
import 'package:the_store_app/pages/components/search_widget.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter/material.dart';
import 'category_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CategoryPage module
@RoutePage()
class CategoryPageWidget extends ElementaryWidget<ICategoryPageWidgetModel> {
  const CategoryPageWidget({
    Key? key,
    this.category,
    @queryParam this.title,
    @queryParam this.categoryId,
    WidgetModelFactory wmFactory = defaultCategoryPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final String? title;
  final int? categoryId;
  final Category? category;

  @override
  Widget build(ICategoryPageWidgetModel wm) {
    return EntityStateNotifierBuilder(
      listenableEntityState: wm.categoryState,
      loadingBuilder: (_, __) {
        return const Center(
          child: LoadingIndicator(),
        );
      },
      builder: (context, data) {
        final localizations = AppLocalizations.of(context);
        final subcategories = data;

        if (subcategories == null || subcategories.isEmpty) {
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

        return Scaffold(
          appBar: AppBar(
            title: Text(title ?? category?.name ?? localizations.catalog),
            leading: wm.router.canPop()
                ? const BackButton(
                    color: Colors.black,
                  )
                : null,
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SearchWidget(
                  controller: TextEditingController(),
                ),
              ),
            ),
          ),
          body: ListView.separated(
            itemBuilder: (context, index) {
              if (categoryId != null) {
                return SmallCategoryCard(
                  category: subcategories[index],
                  onTap: () => wm.openCategory(subcategories[index]),
                );
              }

              return CategoryCard(
                category: subcategories[index],
                onTap: () => wm.openCategory(subcategories[index]),
              );
            },
            itemCount: subcategories.length,
            separatorBuilder: (context, index) {
              return const Divider(
                indent: 16,
                endIndent: 32,
                color: Color(0xffE3E3E3),
              );
            },
          ),
        );
      },
    );
  }
}

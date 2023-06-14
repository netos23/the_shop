import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_categories_response.freezed.dart';
part 'catalog_categories_response.g.dart';

@freezed
class CatalogCategoriesResponse with _$CatalogCategoriesResponse {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CatalogCategoriesResponse({
    required String name,
  }) = _CatalogCategoriesResponse;

  factory CatalogCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogCategoriesResponseFromJson(json);
}

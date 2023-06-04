import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_categories_request.freezed.dart';
part 'catalog_categories_request.g.dart';

@freezed
class CatalogCategoriesRequest with _$CatalogCategoriesRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  factory CatalogCategoriesRequest({
    int? id,
  }) = _CatalogCategoriesRequest;

  factory CatalogCategoriesRequest.fromJson(Map<String, dynamic> json) =>
      _$CatalogCategoriesRequestFromJson(json);
}

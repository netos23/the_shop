import 'package:admin_app/domain/models/sort_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort_types_request.freezed.dart';
part 'sort_types_request.g.dart';

@freezed
class SortTypesRequest with _$SortTypesRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  factory SortTypesRequest({
    required List<SortType> sorts,
  }) = _SortTypesRequest;

  factory SortTypesRequest.fromJson(Map<String, dynamic> json) =>
      _$SortTypesRequestFromJson(json);
}

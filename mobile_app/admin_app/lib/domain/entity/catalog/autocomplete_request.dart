import 'package:freezed_annotation/freezed_annotation.dart';

part 'autocomplete_request.freezed.dart';
part 'autocomplete_request.g.dart';

@freezed
class AutocompleteRequest with _$AutocompleteRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  factory AutocompleteRequest({
    required String searchRequest,
  }) = _AutocompleteRequest;

  factory AutocompleteRequest.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteRequestFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'autocomplete_response.freezed.dart';
part 'autocomplete_response.g.dart';

@freezed
class AutocompleteResponse with _$AutocompleteResponse {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  factory AutocompleteResponse({
    required List<String> suggestions,
  }) = _AutocompleteResponse;

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);
}

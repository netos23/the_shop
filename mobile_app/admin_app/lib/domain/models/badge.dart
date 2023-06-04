import 'package:freezed_annotation/freezed_annotation.dart';

part 'badge.freezed.dart';
part 'badge.g.dart';

@freezed
class Badge with _$Badge {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory Badge({
    required int id,
    String? title,
    @JsonKey(name: 'bg_color') String? bgColor,
  }) = _Badge;

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
}

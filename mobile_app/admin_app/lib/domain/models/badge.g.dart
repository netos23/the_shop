// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Badge _$$_BadgeFromJson(Map<String, dynamic> json) => _$_Badge(
      id: json['id'] as int,
      title: json['title'] as String?,
      bgColor: json['bg_color'] as String?,
    );

Map<String, dynamic> _$$_BadgeToJson(_$_Badge instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('bg_color', instance.bgColor);
  return val;
}

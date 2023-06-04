// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SortType _$$_SortTypeFromJson(Map<String, dynamic> json) => _$_SortType(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_SortTypeToJson(_$_SortType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}

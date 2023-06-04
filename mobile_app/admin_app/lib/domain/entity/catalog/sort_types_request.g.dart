// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_types_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SortTypesRequest _$$_SortTypesRequestFromJson(Map<String, dynamic> json) =>
    _$_SortTypesRequest(
      sorts: (json['sorts'] as List<dynamic>)
          .map((e) => SortType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SortTypesRequestToJson(_$_SortTypesRequest instance) =>
    <String, dynamic>{
      'sorts': instance.sorts.map((e) => e.toJson()).toList(),
    };

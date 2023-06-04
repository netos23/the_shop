// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AutocompleteResponse _$$_AutocompleteResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AutocompleteResponse(
      suggestions: (json['suggestions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_AutocompleteResponseToJson(
        _$_AutocompleteResponse instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions,
    };

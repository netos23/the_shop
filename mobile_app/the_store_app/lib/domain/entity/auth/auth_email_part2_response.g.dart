// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_email_part2_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthEmailPart2Response _$$_AuthEmailPart2ResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AuthEmailPart2Response(
      refreshToken: json['refresh_token'] as String,
      accessToken: json['access_token'] as String,
    );

Map<String, dynamic> _$$_AuthEmailPart2ResponseToJson(
        _$_AuthEmailPart2Response instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
      'access_token': instance.accessToken,
    };

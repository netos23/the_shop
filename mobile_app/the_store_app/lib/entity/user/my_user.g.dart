// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyUserDto _$$_MyUserDtoFromJson(Map<String, dynamic> json) => _$_MyUserDto(
      id: json['id'] as int,
      userName: json['userName'] as String,
      userPhone: json['userPhone'] as String,
      userAnonimus: json['userAnonimus'] as bool,
      userFirebase: json['userFirebase'] as int,
    );

Map<String, dynamic> _$$_MyUserDtoToJson(_$_MyUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'userPhone': instance.userPhone,
      'userAnonimus': instance.userAnonimus,
      'userFirebase': instance.userFirebase,
    };

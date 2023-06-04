// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreUser _$$_StoreUserFromJson(Map<String, dynamic> json) => _$_StoreUser(
      username: json['username'] as String?,
      userEmail: json['userEmail'] as String?,
      userPhone: json['userPhone'] as String?,
      gender: json['gender'] as String?,
      userAnonimus: json['userAnonimus'] as bool?,
      userFirebase: json['userFirebase'] as int?,
    );

Map<String, dynamic> _$$_StoreUserToJson(_$_StoreUser instance) =>
    <String, dynamic>{
      'username': instance.username,
      'userEmail': instance.userEmail,
      'userPhone': instance.userPhone,
      'gender': instance.gender,
      'userAnonimus': instance.userAnonimus,
      'userFirebase': instance.userFirebase,
    };

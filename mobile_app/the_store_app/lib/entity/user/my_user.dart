

import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_user.g.dart';
part 'my_user.freezed.dart';


@Freezed(
  fromJson: true,
  toJson: true,
)
class MyUserDto with _$MyUserDto{
factory MyUserDto({
  required int id,
  required String userName,
  required String userPhone,
  required String usedEmail,
  required bool userAnonimus,
  required int userFirebase,
}) = _MyUserDto;

factory MyUserDto.fromJson(Map<String, dynamic> json) => _$MyUserDtoFromJson(json);
}
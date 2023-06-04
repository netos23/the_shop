import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_user.freezed.dart';
part 'store_user.g.dart';

@freezed
class StoreUser with _$StoreUser {
    factory StoreUser({
      String? username,
      String? userEmail,
      String? userPhone,
      String? gender,
      bool? userAnonimus,
      int? userFirebase,
}) = _StoreUser;

    factory StoreUser.fromJson(Map<String, dynamic> json) => _$StoreUserFromJson(json);
}
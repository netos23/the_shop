
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_store_app/src/domain/auth/auth_service.dart';

import 'client_auth_service_mixin.dart';

class StoreNativeAuthService extends NativeAuthService
    with ClientAuthServiceMixin
    implements AuthService<AuthCredential> {

  @override
  final Dio dio;

  StoreNativeAuthService({
    required super.errorHandler,
    required this.dio,
  });

  @override
  Future<void> handleAuth(AuthCredential userCredential) async {
    await FirebaseAuth.instance.currentUser?.linkWithCredential(userCredential);
  }
}

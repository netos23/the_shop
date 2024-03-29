
import 'package:dio/dio.dart';
import 'package:the_store_app/src/domain/auth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_store_app/store_module/domain/auth/client_auth_service_mixin.dart';


class StoreWebAuthService extends WebAuthService
    with ClientAuthServiceMixin
    implements AuthService<String> {

  @override
  final Dio dio;

  StoreWebAuthService({
    required super.errorHandler,
    required this.dio,
  });

  @override
  Future<void> handleAuth(String userCredential) async {
    await FirebaseAuth.instance.currentUser
        ?.linkWithPhoneNumber(userCredential);
  }
}

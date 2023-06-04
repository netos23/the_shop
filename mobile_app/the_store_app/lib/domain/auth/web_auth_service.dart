import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_store_app/domain/auth/client_auth_service_mixin.dart';

class StoreWebAuthService extends WebAuthService with ClientAuthServiceMixin {
  StoreWebAuthService({required super.errorHandler});

  @override
  Future<void> handleAuth(String userCredential) async {
    await FirebaseAuth.instance.currentUser
        ?.linkWithPhoneNumber(userCredential);
  }

  @override
  void dispose() {}
}

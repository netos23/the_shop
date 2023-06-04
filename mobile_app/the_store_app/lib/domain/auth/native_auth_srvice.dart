import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'client_auth_service_mixin.dart';

class StoreNativeAuthService extends NativeAuthService
    with ClientAuthServiceMixin {
  StoreNativeAuthService({required super.errorHandler});

  @override
  Future<void> handleAuth(AuthCredential userCredential) async {
    await FirebaseAuth.instance.currentUser?.linkWithCredential(userCredential);
  }

  @override
  void dispose() {}
}

import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AdminNativeAuthService extends NativeAuthService {
  AdminNativeAuthService({required super.errorHandler});

  @override
  Future<void> handleAuth(AuthCredential userCredential) async {
    await FirebaseAuth.instance.signInWithCredential(userCredential);
  }

  @override
  Future<void> asyncInit() async {}

  @override
  void dispose() {}
}

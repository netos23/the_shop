import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

mixin ClientAuthServiceMixin {
  Dio get dio;

  Future<void> asyncInit() async {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      await FirebaseAuth.instance.signInAnonymously();
      dio.post('/user/registration').ignore();
    }
  }
}

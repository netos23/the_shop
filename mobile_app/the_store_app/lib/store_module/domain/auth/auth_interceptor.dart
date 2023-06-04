import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class JwtInterceptor extends QueuedInterceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final user = FirebaseAuth.instance.currentUser;



    super.onRequest(options, handler);
  }
}

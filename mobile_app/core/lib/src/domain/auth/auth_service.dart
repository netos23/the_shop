import 'package:core/src/domain/auth/auth_delegate.dart';
import 'package:elementary/elementary.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../util/lifecycle_component.dart';

abstract class AuthService<T> implements AsyncLifecycleComponent {
  final ErrorHandler errorHandler;

  AuthService({
    required this.errorHandler,
  });

  @protected
  Future<void> handleAuth(T userCredential);

  Future<void> loginWithDelegate(AuthDelegate authDelegate);

  @override
  Future<void> asyncInit() async {}

  @override
  void dispose() {}
}

abstract class WebAuthService extends AuthService<String> {
  WebAuthService({required super.errorHandler});

  @override
  Future<void> loginWithDelegate(AuthDelegate authDelegate) async {
    final confirmationResult =
        await FirebaseAuth.instance.signInWithPhoneNumber(authDelegate.phone);

    final smsCode = await authDelegate.asyncCodeProvider();

    if (smsCode == null) {
      return;
    }
    try {
      await confirmationResult.confirm(smsCode);
      await handleAuth(authDelegate.phone);
      authDelegate.resultHandler(true);
    } catch (e, stacktrace) {
      errorHandler.handleError(
        e,
        stackTrace: stacktrace,
      );
      authDelegate.resultHandler(false, e);
    }
  }
}

abstract class NativeAuthService extends AuthService<AuthCredential> {
  NativeAuthService({required super.errorHandler});

  @override
  Future<void> loginWithDelegate(AuthDelegate authDelegate) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: authDelegate.phone,
      verificationCompleted: (e) {},
      verificationFailed: (e) {
        errorHandler.handleError(e);
        authDelegate.resultHandler(false, e);
      },
      codeSent: (verificationId, resendToken) async {
        final smsCode = await authDelegate.asyncCodeProvider();

        if (smsCode != null) {
          // Create a PhoneAuthCredential with the code
          final credential = PhoneAuthProvider.credential(
            verificationId: verificationId,
            smsCode: smsCode,
          );

          try {
            // Sign the user in (or link) with the credential
            await handleAuth(credential);
            authDelegate.resultHandler(true);
          } on FirebaseAuthException catch (e, stackTrace) {
            errorHandler.handleError(e, stackTrace: stackTrace);
          }
        }
      },
      codeAutoRetrievalTimeout: (e) {
        errorHandler.handleError(
          e,
        );
      },
    );
  }
}

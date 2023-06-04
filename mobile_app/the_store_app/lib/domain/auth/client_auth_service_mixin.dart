import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';

mixin ClientAuthServiceMixin on AsyncInitLifecycleComponent {
  @override
  Future<void> asyncInit() async {
    final user =  FirebaseAuth.instance.currentUser;

    if(user == null){
      FirebaseAuth.instance.signInAnonymously();
    }
  }

}
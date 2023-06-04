typedef AuthResultHandler = void Function(bool, [Object?]);
typedef AsyncCodeProvider = Future<String?> Function();

class AuthDelegate {
  final String phone;
  final AuthResultHandler resultHandler;
  final AsyncCodeProvider asyncCodeProvider;

  AuthDelegate({
    required this.phone,
    required this.resultHandler,
    required this.asyncCodeProvider,
  });
}

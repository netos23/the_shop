import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:the_store_app/data/repository/auth_repository.dart';
import 'package:the_store_app/data/repository/token_ropository.dart';
import 'package:the_store_app/domain/models/profile.dart';
import 'package:the_store_app/domain/models/register_brand_request.dart';
import 'package:the_store_app/util/lifecycle_component.dart';
import 'package:the_store_app/util/value_stream_wrapper.dart';

class ProfileUseCase implements LifecycleComponent {
  final TokenRepository repository;
  final AuthRepository authRepository;
  final ValueStreamWrapper<Profile?> profile = ValueStreamWrapper();

  ProfileUseCase(this.repository, this.authRepository);

  @override
  void dispose() {
    repository.removeListener(_listenTokenStatus);
    profile.dispose();
  }

  @override
  void init() {
    repository.addListener(_listenTokenStatus);
  }

  void _listenTokenStatus() {
    if (profile.valueOrNull != null && !repository.auth) {
      profile.add(null);
    } else {
      loadProfile();
    }
  }

  Future<void> logout() async {
    await repository.deleteTokens();
    profile.add(null);
  }

  Future<void> deleteAccount() async {
    await authRepository.deleteUser();
    await repository.deleteTokens();
    profile.add(null);
  }

  Future<void> loadProfile() async {
    final result = await authRepository.getUser();
    FirebaseAnalytics.instance.setUserId(id: result.email);
    profile.add(result);
  }

  Future<void> patchProfile(Profile newProfile) async {
    final result = await authRepository.patchUser(request: newProfile);
    profile.add(result);
  }

  Future<void> registerBrand(RegisterBrandRequest request) async {
    await authRepository.registerBrand(request: request);
  }
}

import 'package:elementary/elementary.dart';
import 'package:the_store_app/data/user/user_client.dart';
import 'package:the_store_app/entity/user/store_user.dart';

// TODO: cover with documentation
/// Default Elementary model for DeliveryRegistrationScreen module
class DeliveryRegistrationScreenModel extends ElementaryModel {
  DeliveryRegistrationScreenModel({
    super.errorHandler,
    required this.client
  });

  final UserClient client;
  StoreUser? user;

  Future<StoreUser> getUser() async {
    await Future.delayed(const Duration(seconds: 1));
    return StoreUser(
      username: "Ясо сучлены",
      userEmail: "123@email.com",
      gender: 'female',
      userPhone: "81231212123",
    );
  }
}

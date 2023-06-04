import 'package:elementary/elementary.dart';
import 'package:the_store_app/data/user/user_client.dart';
import 'package:the_store_app/entity/user/store_user.dart';

// TODO: cover with documentation
/// Default Elementary model for ProfileMyOrdersScreen module
class ProfileMyOrdersScreenModel extends ElementaryModel {
  ProfileMyOrdersScreenModel({super.errorHandler, required this.client});

  final UserClient client;
  StoreUser? user;

  Future<StoreUser> getUserOrders() async {
    //repo call
    await Future.delayed(const Duration(seconds: 2));

    return StoreUser();
  }
}

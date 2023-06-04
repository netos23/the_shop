import 'package:elementary/elementary.dart';
import 'package:the_store_app/data/user/user_client.dart';
import 'package:the_store_app/entity/entity.dart';
import 'package:the_store_app/entity/user/my_user_dto.dart';

// TODO: cover with documentation
/// Default Elementary model for ProfileMyOrdersScreen module
class ProfileMyOrdersScreenModel extends ElementaryModel {
  ProfileMyOrdersScreenModel({super.errorHandler, required this.client});

  final UserClient client;
  MyUserDto? user;

  Future<MyUserDto> getUserOrders() async {
    //repo call
    await Future.delayed(const Duration(seconds: 2));



    return MyUserDto(orders: [
      MyOrderDto(
          id: 1234,
          orderStatus: false,
          paymentDTO: PaymentDto(
            id: 123,
            type: "cash",
            picture: "",
          ),
          orderTotal: '1234',
          products: []
      ),
      MyOrderDto(
          id: 1234,
          orderStatus: false,
          paymentDTO: PaymentDto(
            id: 123,
            type: "cash",
            picture: "",
          ),
          orderTotal: '1234',
          products: []
      ),
      MyOrderDto(
          id: 1234,
          orderStatus: false,
          paymentDTO: PaymentDto(
            id: 123,
            type: "cash",
            picture: "",
          ),
          orderTotal: '1234',
          products: []
      ),
      MyOrderDto(
          id: 1234,
          orderStatus: true,
          paymentDTO: PaymentDto(
            id: 123,
            type: "credit_card",
            picture: "",
          ),
          orderTotal: '1234',
          products: []
      )
    ]);
  }
}

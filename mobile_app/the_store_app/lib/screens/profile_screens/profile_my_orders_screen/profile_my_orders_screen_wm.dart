import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/entity/user/my_user_dto.dart';
import 'package:the_store_app/navigation/app_router.dart';
import 'profile_my_orders_screen_model.dart';
import 'profile_my_orders_screen_widget.dart';

abstract class IProfileMyOrdersScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<MyUserDto> get userState;

  orderTapped(int id) {}
}

ProfileMyOrdersScreenWidgetModel defaultProfileMyOrdersScreenWidgetModelFactory(
    BuildContext context) {
  return ProfileMyOrdersScreenWidgetModel(ProfileMyOrdersScreenModel(
      errorHandler: context.read(), client: context.read()));
}

// TODO: cover with documentation
/// Default widget model for ProfileMyOrdersScreenWidget
class ProfileMyOrdersScreenWidgetModel
    extends WidgetModel<ProfileMyOrdersScreenWidget, ProfileMyOrdersScreenModel>
    with ThemeProvider
    implements IProfileMyOrdersScreenWidgetModel {
  ProfileMyOrdersScreenWidgetModel(ProfileMyOrdersScreenModel model)
      : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _getUserOrders();
  }

  @override
  EntityStateNotifier<MyUserDto> userState = EntityStateNotifier<MyUserDto>();

  MyUserDto? user;

  Future<void> _getUserOrders() async {
    userState.loading(userState.value?.data);
    try {
      user = await model.getUserOrders();
      userState.content(user ?? MyUserDto());
    } catch (e) {
      context.showSnackBar('Не удалось получить информацию о заказах');
    }
  }

  @override
  orderTapped(int id) {
    context.router.push(OrderDetailsRoute(index: id));
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/entity/entity.dart';
import 'package:the_store_app/entity/order/order.dart';
import 'package:the_store_app/screens/components/components.dart';
import 'profile_my_orders_screen_wm.dart';


/// Main widget for ProfileMyOrdersScreen module
///
@RoutePage()
class ProfileMyOrdersScreenWidget
    extends ElementaryWidget<IProfileMyOrdersScreenWidgetModel> {
  const ProfileMyOrdersScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory =
        defaultProfileMyOrdersScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileMyOrdersScreenWidgetModel wm) {
    return Scaffold(
        appBar: AppBar(
          leading: AutoLeadingButton(
            color: wm.colorScheme.primary,
          ),
          title: Text(
            "Мои заказы",
            style: AppTypography.title,
          ),
          centerTitle: true,
        ),
        body: EntityStateNotifierBuilder(
          listenableEntityState: wm.userState,
          loadingBuilder: (context, state) {
            return const Center(child: PreloaderCircleIndicator());
          },
          builder: (context, userState) {
            final orders =  [];
            if (orders.isEmpty) {
              return Center(
                child: Text("У вас нет активных заказов",
                style: wm.textTheme.bodyLarge,),
              );
            }
            return ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return _OrderTile(
                    onTap: () => wm.orderTapped(orders[index].id),
                    order: orders[index],
                  );
                });
          },
        ));
  }
}

class _OrderTile extends StatelessWidget {
  const _OrderTile({Key? key, required this.onTap, required this.order})
      : super(key: key);

  final VoidCallback? onTap;
  final Order order;

  @override
  Widget build(BuildContext context) {


    final theme = Theme.of(context);

    final String orderStatus =
        order.orderStatus ? "Заказ готов к выдаче" : "Заказ доставляется";
    final String payment = order.paymentDTO.type == "credit_card"
        ? "Оплачено картой"
        : "Наличными при получении";
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "№ ${order.id}",
                    style: theme.textTheme.bodyLarge,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).colorScheme.primary,
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Статус по доставке : ",
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: theme.colorScheme.secondaryContainer),
                  ),
                  Text(orderStatus,
                      style: theme.textTheme.bodySmall!
                          .copyWith(fontWeight: FontWeight.w700))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Оплата : ",
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: theme.colorScheme.secondaryContainer),
                  ),
                  Text(payment,
                      style: theme.textTheme.bodySmall!
                          .copyWith(fontWeight: FontWeight.w700)),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Divider(
                color: theme.extension<ExtraAppColors>()!.border,
                height: 0,
                thickness: 2,
                indent: 15,
                endIndent: 15,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

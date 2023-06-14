import 'package:auto_route/annotations.dart';
import 'package:the_store_app/feature/order_history/manager/order_history_manager.dart';
import 'package:the_store_app/feature/order_history/ui/order_history_page.dart';
import 'package:the_store_app/internal/app_components.dart';
import 'package:the_store_app/util/snack_bar_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage(
  name: 'OrderHistoryRoute',
)
class OrderHistoryPageScope extends StatefulWidget {
  const OrderHistoryPageScope({
    Key? key,
  }) : super(key: key);

  @override
  State<OrderHistoryPageScope> createState() => _OrderHistoryPageScopeState();
}

class _OrderHistoryPageScopeState extends State<OrderHistoryPageScope> {
  late final OrderHistoryManager _orderHistoryManager = OrderHistoryManager(
    api: AppComponents().orderHistoryService,
    profileUseCase: AppComponents().profileUseCase,
    showSnackBar: context.showSnackBar,
  );

  @override
  void initState() {
    super.initState();

    _orderHistoryManager.init();
  }

  @override
  void dispose() {
    _orderHistoryManager.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: _orderHistoryManager,
      child: const OrderHistoryPage(),
    );
  }
}

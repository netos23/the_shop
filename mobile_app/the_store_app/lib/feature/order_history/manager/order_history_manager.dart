import 'dart:async';

import '../../../domain/models/order.dart';
import '../../../domain/use_case/profile_use_case.dart';
import '../../../util/lifecycle_component.dart';
import '../api/order_history_service.dart';

class OrderHistoryManager implements LifecycleComponent {
  final OrderHistoryService api;
  final ProfileUseCase profileUseCase;
  final SnackBarDelegate showSnackBar;

  final StreamController<List<Order>> _orderHistoryStreamController =
      StreamController.broadcast();

  OrderHistoryManager({
    required this.api,
    required this.profileUseCase,
    required this.showSnackBar,
  });

  bool get isFarmer => profileUseCase.profile.valueOrNull?.role == "farmer";

  Stream<List<Order>> get orderHistoryStream =>
      _orderHistoryStreamController.stream;

  @override
  void init() {
    _loadOrderHistory();
  }

  Future<void> _loadOrderHistory() async {
    try {
      final brand = profileUseCase.profile.valueOrNull?.brand;
      final orderHistory = await api.getOrderHistory(
        brand: brand,
      );

      _orderHistoryStreamController.add(orderHistory);
    } on Object catch (_) {
      showSnackBar('При загрузке товаров произошла ошибка');
    }
  }

  @override
  void dispose() {
    _orderHistoryStreamController.close();
  }
}

typedef SnackBarDelegate = void Function(String);

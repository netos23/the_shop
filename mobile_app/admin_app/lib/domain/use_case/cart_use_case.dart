import 'dart:async';

import 'package:admin_app/data/service/cart_service.dart';
import 'package:admin_app/domain/entity/cart/calc_cart.dart';
import 'package:admin_app/domain/entity/cart/calculated_cart.dart';
import 'package:admin_app/domain/entity/cart/cart_product.dart';
import 'package:admin_app/domain/entity/cart/cart_update.dart';
import 'package:admin_app/domain/use_case/profile_use_case.dart';
import 'package:admin_app/util/lifecycle_component.dart';
import 'package:admin_app/util/value_stream_wrapper.dart';

class CartUseCase implements LifecycleComponent {
  final CartService cartService;
  final ProfileUseCase profileUseCase;
  StreamSubscription? _subscription;
  final ValueStreamWrapper<CalcCart?> cart = ValueStreamWrapper();

  CartUseCase(
    this.cartService,
    this.profileUseCase,
  );

  @override
  void dispose() {
    _subscription?.cancel();
    cart.dispose();
  }

  @override
  void init() {
    _subscription = profileUseCase.profile.stream.listen((event) {
      if (event == null) {
        cart.add(null);
      } else {
        loadCart(request: CalculatedCart());
      }
    });
  }

  Future<void> loadCart({
    required CalculatedCart request,
  }) async {
    final response = await cartService.cartCalc(request: request);
    cart.add(response);
  }

  Future<void> postCart({
    required CartUpdate request,
  }) async {
    final response = await cartService.postCart(request: request);
    cart.add(response);
  }

  Future<void> deleteCart({
    required CartUpdate request,
  }) async {
    _deleteProduct(request);
    final response = await cartService.deleteCart(request: request);
    cart.add(response);
  }

  Future<void> addProductCount({
    required CartUpdate request,
  }) async {
    List<CartProduct> newProducts = cart.value?.products
            .map((e) => e.product.id == request.productId
                ? e.copyWith(count: request.count ?? e.count + 1)
                : e)
            .toList() ??
        [];
    cart.add(cart.value?.copyWith(products: newProducts));

    final syncCart = await cartService.putCart(request: request);
    cart.add(syncCart);
  }

  void _deleteProduct(CartUpdate cartUpdate) {
    final productsWithoutSingle = cart.value?.products.where((element) =>
        (element.count > 1 && element.product.id == cartUpdate.productId));
    List<CartProduct> newProducts = productsWithoutSingle
            ?.map((e) => e.product.id == cartUpdate.productId
                ? e.copyWith(count: e.count - 1)
                : e)
            .toList() ??
        [];
    cart.add(cart.value?.copyWith(products: newProducts));
  }
}

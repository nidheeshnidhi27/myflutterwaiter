import 'package:flutter/widgets.dart';
import '../models/cart_model.dart';

class CartScope extends InheritedNotifier<CartModel> {
  const CartScope({super.key, required CartModel cart, required super.child})
      : super(notifier: cart);

  static CartModel of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<CartScope>();
    assert(scope != null, 'CartScope not found in context');
    return scope!.notifier!;
  }
}

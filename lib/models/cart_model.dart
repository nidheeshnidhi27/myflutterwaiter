import 'package:flutter/foundation.dart';
import 'cart_item.dart';
import 'food_item.dart';

class CartModel extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => List.unmodifiable(_items);

  int get count => _items.fold(0, (sum, e) => sum + e.qty);

  double get totalPrice => _items.fold(0, (sum, e) => sum + e.total);

  void add(FoodItem item) {
    final index = _items.indexWhere((e) => e.item.id == item.id);
    if (index >= 0) {
      _items[index].qty += 1;
    } else {
      _items.add(CartItem(item: item));
    }
    notifyListeners();
  }

  void remove(FoodItem item) {
    final index = _items.indexWhere((e) => e.item.id == item.id);
    if (index >= 0) {
      final ci = _items[index];
      if (ci.qty > 1) {
        ci.qty -= 1;
      } else {
        _items.removeAt(index);
      }
      notifyListeners();
    }
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}

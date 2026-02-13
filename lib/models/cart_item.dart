import 'food_item.dart';

class CartItem {
  final FoodItem item;
  int qty;

  CartItem({required this.item, this.qty = 1});

  double get total => item.price * qty;
}

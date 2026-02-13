import 'food_item.dart';

class Category {
  final String id;
  final String name;
  final List<FoodItem> items;

  const Category({
    required this.id,
    required this.name,
    required this.items,
  });
}

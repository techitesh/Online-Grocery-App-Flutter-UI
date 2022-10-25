class CategoriesService {
  final List<Map<String, dynamic>> _categories = [
    {"name": "Grocery", "icon": 'assets/icons/grocery_icon.svg'},
    {"name": "Beverages", "icon": 'assets/icons/bevereges_icon.svg'},
    {"name": "Vegetables", "icon": 'assets/icons/vegetable_icon.svg'},
    {"name": "Fruits", "icon": 'assets/icons/fruit_icon.svg'},
    {"name": "Liquor", "icon": "assets/icons/liquor_icon.svg"},
    {"name": "Dairy", "icon": "assets/icons/dairy_icon.svg"},
    {"name": "Pharmacy", "icon": "assets/icons/pharmacy_icon.svg"},
  ];
  static Future<List<Map<String, dynamic>>> getCategories() async {
    await Future.delayed(Duration(seconds: 2));
    return CategoriesService()._categories;
  }

  static getTopCategories() {
    return CategoriesService()._categories.sublist(0, 4);
  }
}

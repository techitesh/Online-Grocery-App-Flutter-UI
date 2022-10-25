class ProductService {
  final List<Map<String, dynamic>> products = [
    {
      "name": "Potato",
      "category": "vegetables",
      "isBestSeller": true,
      "price": "20",
      "image": "https://m.media-amazon.com/images/I/61yXL70-RaL._SX679_.jpg"
    },
    {
      "name": "Tomato",
      "category": "vegetables",
      "isBestSeller": true,
      "price": "20",
      "image": "https://m.media-amazon.com/images/I/71DYmqoq-VL._SL1024_.jpg"
    },
    {
      "name": "Onion",
      "price": "18",
      "category": "vegetables",
      "isBestSeller": true,
      "image":
          "https://www.jiomart.com/images/product/600x600/590002136/onion-5-kg-pack-product-images-o590002136-p590002136-0-202203141906.jpg"
    },
    {
      "name": "Apple",
      "category": "fruits",
      "price": "100",
      "isBestSeller": true,
      "image":
          "https://www.collinsdictionary.com/images/full/apple_158989157.jpg"
    },
    {
      "name": "Banana",
      "category": "fruits",
      "isBestSeller": true,
      "price": "40",
      "image":
          "https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bananas-218094b-scaled.jpg"
    },
    {
      "name": "Kiwi",
      "category": "fruits",
      "price": "80",
      "isBestSeller": false,
      "image":
          "https://cdn.britannica.com/45/126445-050-4C0FA9F6/Kiwi-fruit.jpg"
    },
    // {"name": "Mushrooms", "category": "vegetables", "image": ""},
    // {"name": "Mushrooms", "category": "vegetables", "image": ""},
    // {"name": "Mushrooms", "category": "vegetables", "image": ""},
    // {"name": "Mushrooms", "category": "vegetables", "image": ""},
  ];

  static Future getProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    return ProductService().products;
  }

  static getBestSellers() {
    return ProductService()
        .products
        .where((element) => element['isBestSeller'] == true)
        .toList();
  }

  static Future getProductsByCategory(String categoryName) async {
    await Future.delayed(const Duration(seconds: 2));
    return ProductService()
        .products
        .where((element) => element['category'] == categoryName)
        .toList();
  }
}

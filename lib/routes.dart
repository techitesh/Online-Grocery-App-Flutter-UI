import 'package:flutter/widgets.dart';
import 'package:real_fresh/screens/best_sellers/best_sellers.dart';
import 'package:real_fresh/screens/categories/categories.dart';
import 'package:real_fresh/screens/home/home_screen.dart';
import 'package:real_fresh/screens/introductions/intro_screen.dart';
import 'package:real_fresh/screens/products/products_by_category.dart';
import 'package:real_fresh/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  BestSellers.routeName: (context) => const BestSellers(),
  Categories.routeName: (context) => const Categories(),
  ProductsByCategory.routeName: (context) => const ProductsByCategory(),
};

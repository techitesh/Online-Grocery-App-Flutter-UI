import 'package:flutter/material.dart';
import 'package:real_fresh/const.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: kPrimaryColor,
        type: BottomNavigationBarType.fixed,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              size: 30,
            ),
            label: 'Search',
          ),
          // BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Category'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
              ),
              label: 'Cart'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.verified_user_rounded), label: 'Profile')
        ]);
  }
}

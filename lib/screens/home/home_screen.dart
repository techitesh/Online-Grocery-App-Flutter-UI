import 'package:flutter/material.dart';
import 'package:real_fresh/components/bottom_navigation.dart';
import 'package:real_fresh/components/primary_appbar.dart';
import 'package:real_fresh/const.dart';
import 'package:real_fresh/screens/home/components/best_seller.dart';
import 'package:real_fresh/screens/home/components/categories.dart';
import 'package:real_fresh/screens/home/components/fruits.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      appBar: PrimaryAppBar(title: 'Home'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // margin: EdgeInsets.all(10),
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: AssetImage('assets/images/Ads.png'),
              ),
            ),
            CategoriesSection(),
            const SizedBox(
              height: 30,
            ),
            BestSellers(),
            const SizedBox(
              height: 30,
            ),
            Fruits(),
          ]),
        ),
      ),
    );
  }
}

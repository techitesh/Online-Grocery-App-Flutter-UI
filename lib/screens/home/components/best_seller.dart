import 'package:flutter/material.dart';

import 'package:real_fresh/components/home/title_section.dart';
import 'package:real_fresh/components/product_card.dart';
import 'package:real_fresh/services/product_service.dart';

class BestSellers extends StatelessWidget {
  static String routeName = '/best-sellers';
  final List<Map<String, dynamic>> _products = ProductService.getBestSellers();

  BestSellers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        TitleSection(
          title: 'Best Sellers',
          navigate: () {
            Navigator.pushNamed(context, BestSellers.routeName);
          },
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ...List.generate(
                  _products.length,
                  (index) => ProductCard(
                        image: _products[index]['image'],
                        name: _products[index]['name'],
                        price: _products[index]['price'],
                      ))
            ],
          ),
        )
      ]),
    );
  }
}

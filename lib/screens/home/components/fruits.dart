import 'package:flutter/material.dart';
import 'package:real_fresh/components/home/title_section.dart';
import 'package:real_fresh/components/product_card.dart';

import 'package:real_fresh/screens/products/products_by_category.dart';

import 'package:real_fresh/services/product_service.dart';

class Fruits extends StatelessWidget {
  Fruits({super.key});
  final List<Map<String, dynamic>> _products = ProductService()
      .products
      .where((element) => element['category'] == 'fruits')
      .toList();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        TitleSection(
          title: 'Fruits',
          navigate: () {
            Navigator.pushNamed(context, ProductsByCategory.routeName,
                arguments: {"category": "Fruits"});
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
                        name: _products[index]['name'],
                        image: _products[index]['image'],
                        price: _products[index]['price'],
                      ))
            ],
          ),
        )
      ]),
    );
  }
}

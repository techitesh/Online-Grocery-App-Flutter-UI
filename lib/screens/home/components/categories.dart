import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_fresh/screens/categories/categories.dart';
import 'package:real_fresh/screens/products/products_by_category.dart';
import 'package:real_fresh/services/category_service.dart';

import '../../../components/home/title_section.dart';

class CategoriesSection extends StatelessWidget {
  CategoriesSection({super.key});

  final List<Map<String, dynamic>> _categories =
      CategoriesService.getTopCategories();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          TitleSection(
            title: 'All Categories',
            navigate: () {
              Navigator.pushNamed(context, Categories.routeName);
            },
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                _categories.length,
                (index) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ProductsByCategory.routeName,
                        arguments: {"category": _categories[index]['name']});
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(_categories[index]['icon']),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        _categories[index]['name'],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

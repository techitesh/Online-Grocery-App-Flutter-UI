import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_fresh/components/primary_appbar.dart';
import 'package:real_fresh/const.dart';
import 'package:real_fresh/screens/products/products_by_category.dart';
import 'package:real_fresh/services/category_service.dart';

class Categories extends StatefulWidget {
  static String routeName = "/categories";
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(title: 'All Categories'),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder(
          future: CategoriesService.getCategories(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: kPrimaryColor,
                ),
              );
            } else if (snapshot.hasData) {
              return GridView.builder(
                itemCount: snapshot?.data?.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ProductsByCategory.routeName,
                          arguments: {
                            "category": snapshot?.data?[index]['name'],
                          });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child:
                              SvgPicture.asset(snapshot?.data?[index]['icon']),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          snapshot?.data?[index]['name'],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            return const Text('Categories');
          },
        ),
      )),
    );
  }
}

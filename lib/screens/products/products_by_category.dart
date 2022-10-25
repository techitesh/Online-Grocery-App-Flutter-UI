import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_fresh/components/big_product_card.dart';
import 'package:real_fresh/components/primary_appbar.dart';
import '../../const.dart';
import '../../services/product_service.dart';

class ProductsByCategory extends StatefulWidget {
  static String routeName = '/productsbycategory';
  const ProductsByCategory({super.key});

  @override
  State<ProductsByCategory> createState() => _ProductsByCategoryState();
}

class _ProductsByCategoryState extends State<ProductsByCategory> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
        appBar: PrimaryAppBar(
          title: args['category'].toString(),
        ),
        body: SafeArea(
            child: FutureBuilder(
          future: ProductService.getProductsByCategory(
              args['category'].toString().toLowerCase()),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: kPrimaryColor,
                ),
              );
            } else if (snapshot.data?.length == 0) {
              return Center(
                  child: Text(
                'No Records \n Found',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: kPrimaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ));
            } else {
              if (snapshot.hasData) {
                return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: GridView.builder(
                        itemCount: snapshot?.data?.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 2,
                                crossAxisSpacing: 2),
                        // ignore: prefer_const_constructors
                        itemBuilder: (context, index) => BigProductCard(
                          name: snapshot?.data?[index]?['name'],
                          image: snapshot?.data?[index]?['image'],
                          price: snapshot?.data?[index]?['price'],
                        ),
                      ),
                    ));
              }
            }
            return Center(
                child: Text(
              'No Records Found',
              style: GoogleFonts.lato(color: kPrimaryColor),
            ));
          },
        )));
  }
}

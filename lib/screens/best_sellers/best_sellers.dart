import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_fresh/components/big_product_card.dart';
import 'package:real_fresh/components/bottom_navigation.dart';
import 'package:real_fresh/components/primary_appbar.dart';
import 'package:real_fresh/components/product_card.dart';
import 'package:real_fresh/const.dart';
import 'package:real_fresh/services/product_service.dart';

class BestSellers extends StatefulWidget {
  const BestSellers({super.key});
  static String routeName = "/best-sellers";
  @override
  State<BestSellers> createState() => _BestSellersState();
}

class _BestSellersState extends State<BestSellers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: const BottomNavigation(),
        appBar: PrimaryAppBar(
          title: 'Best Sellers',
        ),
        body: FutureBuilder(
          future: ProductService.getProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: kPrimaryColor,
                ),
              );
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
            return const Text('');
          },
        ));
  }
}

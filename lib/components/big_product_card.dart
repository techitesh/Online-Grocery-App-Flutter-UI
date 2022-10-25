import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigProductCard extends StatelessWidget {
  const BigProductCard({
    Key? key,
    required this.name,
    required this.image,
    required this.price,
  }) : super(key: key);

  final String name, image, price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 165,
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade400),
                        child: Text(
                          '1KG',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Icon(Icons.favorite_outline)
                    ],
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 98,
                  child: Image.network('$image'),
                )
              ]),
            ),
            Text(name),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$price ₹',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 45,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'Add',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      this.width = 120,
      this.height = 140,
      required this.name,
      required this.image,
      required this.price})
      : super(key: key);

  final String name, image, price;

  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: width,
            height: height,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 30,
                          height: 15,
                          decoration: BoxDecoration(
                              color: Color(0xFF111111).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '1KG',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                color: Colors.white, fontSize: 10),
                          ),
                        ),
                        Icon(
                          Icons.favorite_outline,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: 90,
                      child: Image.network('$image'),
                    ),
                  )
                ],
              ),
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$name",
            ),
            Container(
              // width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$price ₹',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 45,
                      height: 15,
                      child: Text(
                        'Add',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

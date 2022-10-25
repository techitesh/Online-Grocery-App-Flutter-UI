import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_fresh/const.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.title,
    required this.navigate,
  }) : super(key: key);
  final String title;
  final VoidCallback navigate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: navigate,
          child: Text(
            'View All',
            style: GoogleFonts.lato(fontSize: 12, color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}

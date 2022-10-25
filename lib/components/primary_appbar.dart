import 'package:flutter/material.dart';
import 'package:real_fresh/const.dart';

class PrimaryAppBar extends StatelessWidget with PreferredSizeWidget {
  PrimaryAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_sharp,
        ),
      ),
      title: Text(title),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}

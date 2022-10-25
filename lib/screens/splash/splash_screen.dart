import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_fresh/const.dart';
import 'package:real_fresh/screens/introductions/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToIntroduction();
  }

  _navigateToIntroduction() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.pushNamed(context, IntroScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundColor: Colors.white,
          child: Image(
            image: AssetImage(
              'assets/images/logo.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'RealFresh',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 36),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Online Grocery Shopping App',
          style: GoogleFonts.lato(fontSize: 14, color: Colors.white),
        )
      ],
    );
  }
}

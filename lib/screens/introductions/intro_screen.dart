import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:real_fresh/const.dart';
import 'package:real_fresh/screens/home/home_screen.dart';

class IntroScreen extends StatelessWidget {
  static String routeName = "/intro";
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = GoogleFonts.lato(color: kPrimaryColor);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 62,
                    height: 64,
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "RealFresh",
                        style: GoogleFonts.lato(
                            fontSize: 30, color: kSecondaryColor),
                      ),
                      Text(
                        'Online Grocery Shopping App',
                        style: GoogleFonts.lato(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            )),
            Expanded(
              flex: 4,
              child: IntroductionScreen(
                dotsDecorator: DotsDecorator(
                    activeColor: kPrimaryColor,
                    color: kPrimaryColor.withOpacity(0.2)),
                done: Text(
                  'Done',
                  style: textStyle,
                ),
                showDoneButton: true,
                showSkipButton: true,
                skip: Text(
                  'Skip',
                  style: textStyle,
                ),
                showNextButton: true,
                next: Text(
                  'Next',
                  style: textStyle,
                ),
                onDone: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                pages: _getIntroScreens(),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<PageViewModel> _getIntroScreens() {
    return [
      PageViewModel(
          decoration: PageDecoration(
              bodyTextStyle:
                  GoogleFonts.lato(fontSize: 14, color: Colors.black45),
              titleTextStyle:
                  GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold)),
          title: 'Choose Item Online',
          body:
              'Plan your trip, choose your destination. \n Pick the best place for your holiday.',
          image: const Image(
            image: AssetImage('assets/images/onboarding1.png'),
          )),
      PageViewModel(
          decoration: PageDecoration(
              bodyTextStyle:
                  GoogleFonts.lato(fontSize: 14, color: Colors.black45),
              titleTextStyle:
                  GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold)),
          title: 'Payment Online',
          body:
              'Plan your trip, choose your destination. \n Pick the best place for your holiday.',
          image: const Image(
            image: AssetImage('assets/images/onboarding3.png'),
          )),
      PageViewModel(
          decoration: PageDecoration(
              bodyTextStyle:
                  GoogleFonts.lato(fontSize: 14, color: Colors.black45),
              titleTextStyle:
                  GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold)),
          title: 'Get Your Order',
          body:
              'Plan your trip, choose your destination. \n Pick the best place for your holiday.',
          image: const Image(
            image: AssetImage('assets/images/onboarding3.png'),
          )),
    ];
  }
}

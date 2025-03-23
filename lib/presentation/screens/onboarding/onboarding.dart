import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';
import 'package:islami_c14_offline_sun/core/colors_manager.dart';
import 'package:islami_c14_offline_sun/core/routes_manager/routes.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});

  // void _onIntroEnd(context) {
  //   Navigator.of(context).pushReplacement(
  //     MaterialPageRoute(builder: (_) => const HomePage()),
  //   );
  // }

  Widget _buildImage(String imagePath,
      [double width = 350, double height = 171]) {
    return Image.asset(
      imagePath,
    );
  }

  TextStyle bodyStyle = TextStyle(fontSize: 19.0);

  late PageDecoration pageDecoration = PageDecoration(
    imageAlignment: Alignment.center,
    imageFlex: 2,

    titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
    bodyTextStyle: bodyStyle,
    // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    pageColor: ColorsManager.black,

    imagePadding: EdgeInsets.only(top: 150, left: 16, right: 16),
  );

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: ColorsManager.black,
      allowImplicitScrolling: true,
      // globalFooter: Container(color: Colors.red,width: 100,height: 100,),

      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 68,
            ),
            child: _buildImage(AssetsManager.islamiLogo, 100),
          ),
        ),
      ),
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Let\'s go right away!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => {}
      //   ),
      // ),
      pages: [
        PageViewModel(
          titleWidget: Text(
            "Welcome To Islami App",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: ColorsManager.gold,
                fontWeight: FontWeight.w600),
          ),
          body: "",
          image: _buildImage(AssetsManager.onboarding1),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Text(
            "Welcome To Islami",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: ColorsManager.gold,
                fontWeight: FontWeight.w600),
          ),
          bodyWidget: Text(
            "We Are Very Excited To Have You In Our Community",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: ColorsManager.gold,
                fontWeight: FontWeight.w600),
          ),
          image: _buildImage(AssetsManager.onboarding2),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Text(
            "Reading the Quran",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: ColorsManager.gold,
                fontWeight: FontWeight.w600),
          ),
          bodyWidget: Text(
            "Read, and your Lord is the Most Generous",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: ColorsManager.gold,
                fontWeight: FontWeight.w600),
          ),
          image: _buildImage(AssetsManager.onboarding4),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Text(
            "Bearish",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: ColorsManager.gold,
                fontWeight: FontWeight.w600),
          ),
          bodyWidget: Text(
            "Praise the name of your Lord, the Most High",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: ColorsManager.gold,
                fontWeight: FontWeight.w600),
          ),
          image: _buildImage(AssetsManager.onboarding3),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Text(
            "Holy Quran Radio",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: ColorsManager.gold,
                fontWeight: FontWeight.w600),
          ),
          bodyWidget: Text(
            "You can listen to the Holy Quran Radio through the application for free and easily",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: ColorsManager.gold,
                fontWeight: FontWeight.w600),
          ),
          image: _buildImage(AssetsManager.onboarding5),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => {Navigator.pushReplacementNamed(context, AppRoutes.home)},

      // You can override onSkip callback

      showNextButton: true,
      showDoneButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Text('Back',
          style: TextStyle(
              fontSize: 16,
              color: ColorsManager.gold,
              fontWeight: FontWeight.w500)),
      next: const Text(
        "Next",
        style: TextStyle(
            fontSize: 16,
            color: ColorsManager.gold,
            fontWeight: FontWeight.w500),
      ),
      done: const Text(
        'Finish',
        style: TextStyle(
            fontSize: 16,
            color: ColorsManager.gold,
            fontWeight: FontWeight.w500),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      // controlsMargin: const EdgeInsets.all(16),

      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      // dotsContainerDecorator: const ShapeDecoration(
      //   color: Colors.black87,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
      //   ),
      // ),
    );
  }
}

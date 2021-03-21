import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:ottis_pet/app/global/colors.dart';
import 'package:ottis_pet/app/global/text_style.dart';
import 'package:ottis_pet/app/modules/welcome/controllers/welcome_controller.dart';
import 'package:ottis_pet/generated/locales.g.dart';

class WelcomeView extends GetView<WelcomeController> {
  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          key: introKey,
          pages: [
            PageViewModel(
                title: "Fractional shares",
                body:
                    "Instead of having to buy an entire share, invest any amount you want.",
                decoration: pageDecoration,
                image: Image.asset('assets/images/ottis_yellow.png')),
            PageViewModel(
              titleWidget: Container(
                margin: EdgeInsets.only(top: 50),
                height: 200,
                decoration: BoxDecoration(
                  color: kSaffron,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(vertical: 60),
              ),
              bodyWidget: Column(),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: LocaleKeys.buttons_login.tr,
              body: "Another beautiful body text for this example onboarding",
              footer: ElevatedButton(
                onPressed: () {
                  introKey.currentState?.animateScroll(0);
                },
                child: const Text(
                  'FooButton',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              decoration: pageDecoration,
            ),
          ],
          onDone: () {},
          showSkipButton: true,
          skipFlex: 0,
          nextFlex: 0,
          skip: Text(
            'Pular',
            style: kBaseStyle.copyWith(
                fontWeight: FontWeight.w700, color: kSaffron),
          ),
          next: SvgPicture.asset(
            'assets/images/ic_right.svg',
            height: 32,
            color: kSaffron,
          ),
          done: Text('Pronto',
              style: kBaseStyle.copyWith(
                  fontWeight: FontWeight.w700, color: kSaffron)),
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: Get.theme.accentColor,
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        ),
      ),
    );
  }
}

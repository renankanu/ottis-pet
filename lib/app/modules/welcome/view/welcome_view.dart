import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:ottis_pet/app/global/colors.dart';
import 'package:ottis_pet/app/global/images.dart';
import 'package:ottis_pet/app/global/text_style.dart';
import 'package:ottis_pet/app/modules/welcome/controllers/welcome_controller.dart';
import 'package:ottis_pet/app/modules/welcome/view/widgets/container_image.dart';
import 'package:ottis_pet/generated/locales.g.dart';

class WelcomeView extends GetView<WelcomeController> {
  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    );
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          key: introKey,
          pages: [
            PageViewModel(
              titleWidget: ContainerImage(
                child: SvgPicture.asset(
                  kWelcomeScreenOne,
                  height: 300,
                  placeholderBuilder: (BuildContext context) =>
                      ReplaceWelcomeScreenImage(),
                ),
              ),
              bodyWidget: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: '${LocaleKeys.welcome_find_your.tr} ',
                      style: kBaseStyle.copyWith(
                        fontSize: 36,
                        color: kBlackRock,
                        fontWeight: FontWeight.w900,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: LocaleKeys.welcome_dream.tr,
                          style: TextStyle(color: kCornflowerBlue),
                        ),
                        TextSpan(text: ' ${LocaleKeys.welcome_here.tr}'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    LocaleKeys.welcome_just_us.tr,
                    textAlign: TextAlign.center,
                    style: kBaseStyle.copyWith(fontSize: 18, color: kStormGray),
                  )
                ],
              ),
              decoration: pageDecoration,
            ),
            PageViewModel(
              titleWidget: ContainerImage(
                child: SvgPicture.asset(
                  kWelcomeScreenTwo,
                  height: 300,
                  placeholderBuilder: (BuildContext context) =>
                      ReplaceWelcomeScreenImage(),
                ),
              ),
              bodyWidget: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: '${LocaleKeys.welcome_find_your.tr} ',
                      style: kBaseStyle.copyWith(
                        fontSize: 36,
                        color: kBlackRock,
                        fontWeight: FontWeight.w900,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: LocaleKeys.welcome_dream.tr,
                          style: TextStyle(color: kCornflowerBlue),
                        ),
                        TextSpan(text: ' ${LocaleKeys.welcome_here.tr}'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    LocaleKeys.welcome_just_us.tr,
                    textAlign: TextAlign.center,
                    style: kBaseStyle.copyWith(fontSize: 18, color: kStormGray),
                  )
                ],
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
            kIcRight,
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

class ReplaceWelcomeScreenImage extends StatelessWidget {
  const ReplaceWelcomeScreenImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Center(
        child: Container(
          height: 36,
          child: const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(kBlackRock),
          ),
        ),
      ),
    );
  }
}

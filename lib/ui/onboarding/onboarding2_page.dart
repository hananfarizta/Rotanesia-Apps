import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotanesia_apps/routes/app_page.dart';
import 'package:rotanesia_apps/shared/theme.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: double.infinity,
        height: 467,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: redColor3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: const EdgeInsets.only(right: 20, top: 20),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.onboarding3);
                  },
                  child: Text(
                    'Skip',
                    style: redTextStyle1.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 57,
            ),
            Image.asset(
              'assets/bitmap/image_onboarding2.png',
              height: 244,
              width: double.infinity,
            ),
            const SizedBox(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: grayColor2),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: redColor1),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: grayColor2),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Like Rattan? Very suitable\nfor you',
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Rotania sells 5000+ processed rattan products\nand cooperates with 1000+ rattan craftsmen\nfrom all over Indonesia',
              style: secondaryTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget nextButton() {
      return Container(
        margin: EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, bottom: defaultMargin),
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.onboarding3);
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return greenColor1;
                  }
                  return redColor1;
                },
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ))),
          child: Text(
            'Next',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
            child: Column(
          children: [content(), title(), const Spacer(), nextButton()],
        )));
  }
}

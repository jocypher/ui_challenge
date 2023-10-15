import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_challenge/global_variables/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 70, 40, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => pageController.animateToPage(2,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn),
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 480,
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {},
                children: [
                  ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                          primaryBackgroundColor, BlendMode.darken),
                      child: Image.asset("assets/faux_watermelon.avif")),
                  ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                          primaryBackgroundColor, BlendMode.darken),
                      child: Image.asset("assets/pepper_face_plant.avif")),
                  ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                          primaryBackgroundColor, BlendMode.darken),
                      child: Image.asset("assets/faux_watermelon.avif"))
                ],
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: pageController,
                onDotClicked: (index) => pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn),
                effect: const ExpandingDotsEffect(
                    spacing: 10,
                    dotHeight: 11,
                    dotColor: secondaryBackgroundColor,
                    dotWidth: 9,
                    activeDotColor: mainWidgetColor),
                count: 3,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: RichText(
                    text: const TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 40,
                            color: complementaryWidgetColor),
                        children: [
                      TextSpan(text: "Enjoy your\nLife with "),
                      TextSpan(
                          text: "Plants",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])),
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: mainWidgetColor,
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                  onPressed: () async{
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                    await Navigator.pushNamed(context, "/homescreen");
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 35,
                    color: Colors.white,
                  )),
            ),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}

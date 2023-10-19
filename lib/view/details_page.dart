import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_challenge/global_variables/colors.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final PageController detailsPageController = PageController();

  @override
  void dispose() {
    super.dispose();
    detailsPageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 70, 30, 10),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Icon(Icons.shopping_cart_outlined)
              ],
            ),
            Stack(children: [
              SizedBox(
                height: 400,
                child: PageView(
                  controller: detailsPageController,
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
                        child: Image.asset("assets/faux_watermelon.avif")),
                  ],
                ),
              ),
              Positioned(
                bottom: 25,
                right: 20,
                child: SmoothPageIndicator(
                  axisDirection: Axis.vertical,
                  controller: detailsPageController,
                  onDotClicked: (index) => detailsPageController.animateToPage(
                      index,
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
              )
            ]),
          ],
        ),
      ),
    );
  }
}

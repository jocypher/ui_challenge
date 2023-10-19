import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_challenge/global_variables/colors.dart';
import 'package:ui_challenge/model/plant_model.dart';

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

  List<Plant> plantDetails = [
    Plant(
        name: "Lucky-jade-plant",
        plantImage: "assets/faux_watermelon.avif",
        price: 12.99)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      
                      Navigator.popAndPushNamed(context, "/homescreen");
                    },
                    child: const Icon(Icons.arrow_back_ios)),
                  const Icon(Icons.shopping_cart_outlined)
                ],
              ),
            ),
            Stack(children: [
              SizedBox(
                height: 470,
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
                      spacing: 5,
                      dotHeight: 7,
                      dotColor: secondaryBackgroundColor,
                      dotWidth: 6,
                      activeDotColor: mainWidgetColor),
                  count: 3,
                ),
              )
            ]),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Lucky-jade-plant",
                  style: TextStyle(
                      letterSpacing: 0.4,
                      fontSize: 22,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Plants make your life with the minimal and happy\nlove the plants more and enjoy life.",
                  style: TextStyle(
                      letterSpacing: 0.3,
                      height: 1.4,
                      fontSize: 13,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: 230,
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              decoration: const BoxDecoration(
                  color: mainWidgetColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.height,
                            color: Colors.white,
                          ),
                          Text(
                            "Height",
                            style: TextStyle(color: Colors.white, height: 2),
                          ),
                          Text(
                            "30cm - 40cm",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 12),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.sick,
                            color: Colors.white,
                          ),
                          Text(
                            "Temperature",
                            style: TextStyle(color: Colors.white, height: 2),
                          ),
                          Text(
                            "30c to 40c",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 12),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.rice_bowl,
                            color: Colors.white,
                          ),
                          Text(
                            "Pot",
                            style: TextStyle(color: Colors.white, height: 2),
                          ),
                          Text(
                            "ciramic pot",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white70),
                          ),
                          Text(
                            "\$12.99",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: secondaryWidgetColor.withOpacity(0.45)),
                        child: Center(
                            child: Text(
                          "Add Cart",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w700),
                        )),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_challenge/global_variables/colors.dart';
import 'package:ui_challenge/model/plant_model.dart';
import 'package:ui_challenge/widgets/home_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Plant> plants = [
    Plant(
        name: "Lucky Jade Plant",
        plantImage: "assets/faux_watermelon.avif",
        price: 12.99),
    Plant(
        name: "Snake Plants",
        plantImage: "assets/plant_terrocotta.avif",
        price: 12.99),
    Plant(
        name: "Peperomia Plant",
        plantImage: "assets/isom_plant.avif",
        price: 12.99),
    Plant(
        name: "Small Plant",
        plantImage: "assets/pepper_face_plant.avif",
        price: 12.99),
    Plant(
        name: "Lucky Jade Plant",
        plantImage: "assets/faux_watermelon.avif",
        price: 12.99),
    Plant(
        name: "Peperomia Plant",
        plantImage: "assets/isom_plant.avif",
        price: 12.99),
    Plant(
        name: "Small Plant",
        plantImage: "assets/pepper_face_plant.avif",
        price: 12.99),
    Plant(
        name: "Snake Plants",
        plantImage: "assets/plant_terrocotta.avif",
        price: 12.99),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Navigator.popAndPushNamed(
                          context, "/onboardingScreen"),
                      icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    "Search Products",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/images.png",
                      height: 60,
                      width: 60,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(right: 10, left: 10),
                    height: 57,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIconColor: Colors.grey,
                            border: InputBorder.none,
                            hintText: "Plants",
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                  )),
                  Container(
                    height: 57,
                    width: 57,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              spreadRadius: 1)
                        ],
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Image.asset(
                        "assets/filter.png",
                        width: 23,
                        height: 23,
                        color: Colors.black87,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.03),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Found\n10 Results",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              HomeWidget(plants: plants),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_challenge/global_variables/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryBackgroundColor.withOpacity(0.99),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 60, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () =>
                        Navigator.popAndPushNamed(context, "/onboardingScreen"),
                    icon: const Icon(Icons.arrow_back_ios)),
                const Text(
                  "Search Products",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                const Icon(Icons.person)
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
                          prefixIconColor: mainWidgetColor,
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
                  child: const Center(
                    child: Icon(Icons.filter),
                  ),
                )
              ],
            ),
            SizedBox(height: size.height * 0.05),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Found\n10 Results",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

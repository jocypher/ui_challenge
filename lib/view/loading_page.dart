import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/global_variables/colors.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    load();
  }

  void load() async {
    await Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamed(context, '/onboardingScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage("assets/plant_tree.avif"),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                colorFilter: ColorFilter.mode(
                    secondaryWidgetColor.withOpacity(0.4), BlendMode.darken))),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical:150.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedTextKit(
              totalRepeatCount: 1,
              isRepeatingAnimation: false,
              animatedTexts: [
                RotateAnimatedText("Enjoy the breeze of the plants",
                    textAlign: TextAlign.center,
                    textStyle: const TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 45
                    ),
                    transitionHeight: 150,
                    duration: const Duration(seconds: 2),
                    rotateOut: false)
              ],
            )
          ],
        ),
      ),
  
    ]);
  }
}

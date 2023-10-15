import 'package:flutter/material.dart';

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

  void load() async{
    await Future.delayed(Duration(seconds: 3), (){
      Navigator.pushNamed(context, '/onboardingScreen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.green),
      child: const Center(child: Text("Loading Screen", style: TextStyle(decoration: TextDecoration.none, color: Colors.white),)),
    );
  }
}
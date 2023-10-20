import 'package:flutter/material.dart';

class Plant{
  final String name;
  final String plantImage;
  final String? plantDescription;
  final double price;

  Plant({required this.name, required this.plantImage, required this.price, this.plantDescription});

   void navigateT0DetailsScreen(BuildContext context){
    Navigator.pushNamed(context, "/details", arguments: this);
  }
  
}
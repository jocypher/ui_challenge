import 'package:flutter/material.dart';

class Plant{
  final String name;
  final String plantImage;
  final double price;

  Plant({required this.name, required this.plantImage, required this.price});

   void navigateT0DetailsScreen(BuildContext context){
    Navigator.pushNamed(context, "/detailsScreen", arguments: this);
  }
  
}
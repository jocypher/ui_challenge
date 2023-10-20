import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ui_challenge/global_variables/colors.dart';

import 'package:ui_challenge/model/plant_model.dart';

class HomeWidget extends StatefulWidget {
  final List<Plant> plants;
  const HomeWidget({super.key, required this.plants});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: widget.plants.length,
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 30,
        crossAxisSpacing: 30,
        itemBuilder: (context, index) {
          final plants = widget.plants[index];
          return GestureDetector(
            onTap: () {
              plants.navigateT0DetailsScreen(context);
            },
            child: Container(
              height: 270,
              width: 10,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45, blurRadius: 9, spreadRadius: 2)
                  ],
                  color: primaryBackgroundColor,
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                        primaryBackgroundColor, BlendMode.darken),
                    child: Image.asset(
                      plants.plantImage,
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(plants.name),
                  Text(plants.plantDescription!),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$${plants.price}"),
                      Container(
                        height: 33,
                        width: 33,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100)),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}

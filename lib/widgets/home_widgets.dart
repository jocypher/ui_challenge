import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
        crossAxisCount: 2,
        itemBuilder: (context, index) {
          final plants = widget.plants[index];
          return Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(plants.plantImage),
                Text(plants.name),
                Row(
                  children: [
                    Text("\$${plants.price}"),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}

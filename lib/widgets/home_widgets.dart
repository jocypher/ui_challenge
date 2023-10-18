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
        itemCount: widget.plants.length,
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemBuilder: (context, index) {
          final plants = widget.plants[index];
          return Container(
            height: 250,
            decoration: BoxDecoration(color:Colors.blue, 
            borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                        Colors.transparent, BlendMode.darken),
                    child: Image.asset(plants.plantImage)),
                Text(plants.name),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$${plants.price}"),
                    Container(
                      decoration: BoxDecoration(
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
          );
        });
  }
}


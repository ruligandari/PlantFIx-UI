import 'package:dicoding_submission1/model/plant_disease.dart';
import 'package:flutter/material.dart';

class ImageDetail extends StatelessWidget {
  final PlantDisease plantDisease;
  const ImageDetail({required this.plantDisease});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: plantDisease.imageUrls.map((url) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(url),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

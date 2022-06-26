import 'package:flutter/material.dart';
import 'package:dicoding_submission1/model/plant_disease.dart';

import '../../../common/my_colors.dart';
import '../../../common/my_font_size.dart';

class NavigationBarDetail extends StatelessWidget {
  final PlantDisease plantDisease;
  // ignore: use_key_in_widget_constructors
  const NavigationBarDetail({required this.plantDisease});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new),
              color: MyColors.green,
            ),
          ),
          Center(
            child: Text(
              plantDisease.name,
              style: TextStyle(
                color: MyColors.blackText,
                fontFamily: 'Montserrat',
                fontSize: MyFontSize.medium1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

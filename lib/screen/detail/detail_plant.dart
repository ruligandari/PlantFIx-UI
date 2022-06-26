import 'package:dicoding_submission1/common/my_colors.dart';
import 'package:dicoding_submission1/common/my_font_size.dart';
import 'package:dicoding_submission1/screen/detail/widget/card_detail.dart';
import 'package:dicoding_submission1/screen/detail/widget/description_panel.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_submission1/model/plant_disease.dart';
import 'package:dicoding_submission1/screen/detail/widget/navigation_bar.dart';
import 'package:dicoding_submission1/screen/detail/widget/image_detail.dart';

class DetailPlant extends StatelessWidget {
  final PlantDisease plantDisease;
  // ignore: use_key_in_widget_constructors
  const DetailPlant({required this.plantDisease});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SafeArea(
                child: NavigationBarDetail(
                  plantDisease: plantDisease,
                ),
              ),
              Column(
                children: [
                  ImageDetail(
                    plantDisease: plantDisease,
                  ),
                  CardDetail(plantDisease: plantDisease),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      child: Text(
                        'Description',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: MyColors.green,
                            fontSize: MyFontSize.medium1),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          DescriptionPanel(
            plantDisease: plantDisease,
          ),
        ],
      ),
    );
  }
}

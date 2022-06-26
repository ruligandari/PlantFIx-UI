import 'package:dicoding_submission1/common/my_colors.dart';
import 'package:dicoding_submission1/common/my_font_size.dart';
import 'package:dicoding_submission1/model/plant_disease.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DescriptionPanel extends StatelessWidget {
  final PlantDisease plantDisease;
  const DescriptionPanel({required this.plantDisease});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SlidingUpPanel(
      panelBuilder: (controller) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 5,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColors.green,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: controller,
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Gejala',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: MyFontSize.medium1,
                            color: MyColors.green),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        plantDisease.description,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: MyColors.blackText,
                          fontSize: MyFontSize.small2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Pengendalian',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: MyFontSize.medium1,
                            color: MyColors.green),
                      ),
                    ),
                    ListView(
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: plantDisease.controlingDisease
                          .map((e) => ListTile(
                                  title: Text(
                                '- $e ',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: MyFontSize.small2,
                                    color: MyColors.blackText),
                              )))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
      minHeight: size.height * 0.4,
      maxHeight: size.height * 0.9,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      parallaxEnabled: true,
    );
  }
}

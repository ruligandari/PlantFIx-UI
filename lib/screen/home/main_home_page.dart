import 'package:dicoding_submission1/model/plant_disease.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_submission1/common/my_colors.dart';
import 'package:dicoding_submission1/common/my_font_size.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:dicoding_submission1/screen/detail/detail_plant.dart';

var cardScaningStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: MyFontSize.small2,
    color: MyColors.green);

class MainHomePage extends StatelessWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget logo() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'PlantFix',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: MyFontSize.medium2,
                color: MyColors.white,
              ),
            ),
          ],
        ),
      );
    }

    Widget cardScaning() {
      return Container(
        height: 166,
        width: 307,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.white,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.qr_code_scanner_outlined,
                        size: 54.0,
                        color: MyColors.green,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Scan',
                        style: cardScaningStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.manage_search,
                        size: 54,
                        color: MyColors.green,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Diagnose',
                        style: cardScaningStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.medical_services_outlined,
                        size: 54,
                        color: MyColors.green,
                      ),
                      const SizedBox(height: 8),
                      Text('Result', style: cardScaningStyle),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(280, 31),
                          primary: MyColors.green),
                      child: Text(
                        'Take Picture',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: MyFontSize.small3,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "This Feature's will be ready soon :).")));
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget slidingPanel() {
      return SlidingUpPanel(
        panelBuilder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  height: 5,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColors.green),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Plant Disease's",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: MyFontSize.small3,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(0),
                      controller: controller,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: plantList.length,
                      itemBuilder: (context, index) {
                        final PlantDisease plant = plantList[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return DetailPlant(plantDisease: plant);
                            })));
                          },
                          child: Card(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(plant.imageAsset),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          plant.name,
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: MyFontSize.small3,
                                              color: Colors.black),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          plant.family,
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: MyFontSize.small1,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        },
        minHeight: size.height * 0.6,
        maxHeight: size.height * 0.9,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        parallaxEnabled: true,
      );
    }

    return Scaffold(
      backgroundColor: MyColors.green,
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              //menampilkan logo
              child: logo(),
            ),

            //menampilkan card scanning
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: cardScaning(),
            ),
          ],
        ),
        //menampilkan slidingpanel
        slidingPanel(),
      ]),
    );
  }
}

import 'package:dicoding_submission1/common/my_colors.dart';
import 'package:dicoding_submission1/common/my_font_size.dart';
import 'package:dicoding_submission1/model/plant_disease.dart';
import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  final PlantDisease plantDisease;
  const CardDetail({required this.plantDisease});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: size.height * 0.17,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 2),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                plantDisease.name,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: MyColors.blackText,
                  fontSize: MyFontSize.small3,
                ),
              ),
              FavoriteButton(),
            ],
          ),
          Container(
            height: 2,
            width: size.width * 0.1,
            color: MyColors.green,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Family: ${plantDisease.family}',
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
                Text(
                  'Genus : ${plantDisease.genus}',
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  FavoriteButton({Key? key}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
          size: 30,
        ));
  }
}

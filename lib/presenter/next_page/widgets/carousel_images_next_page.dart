import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/app_assets.dart';

class CarouselImagesNextPage extends StatelessWidget {
  const CarouselImagesNextPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 15,
                spreadRadius: 5,
                offset: Offset(3, 4),
              ),
            ],
            image: const DecorationImage(
              image: AssetImage(weather2Img),
              fit: BoxFit.fill
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
             Text(
              "Monitoramento climático",
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

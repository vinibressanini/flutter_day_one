import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/app_assets.dart';

class CarouselImagesNextPage extends StatelessWidget {
    final String text;
    final String imagem;

  const CarouselImagesNextPage({
    Key? key,
    required this.text,
    required this.imagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 250,
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
            image:  DecorationImage(
                image: AssetImage(imagem), fit: BoxFit.fill),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Text(
              text,
              style: const TextStyle(
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

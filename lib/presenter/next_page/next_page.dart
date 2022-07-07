import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/presenter/home/widgets/lamp_home.dart';

import 'widgets/carousel_images_next_page.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan.shade100,
        appBar: AppBar(),
        body: Column(
          children: [
            CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayCurve: Curves.linearToEaseOut,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 0.9,
                  height: 500
                ),
                items: [
                  CarouselImagesNextPage(),
                  CarouselImagesNextPage(),
                  CarouselImagesNextPage(),
                  CarouselImagesNextPage(),
                ]),
          ],
        ));
  }
}

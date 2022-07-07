import 'package:flutter/material.dart';

import 'card_weather_home.dart';
import 'container_music_footer.dart';
import 'lamp_home.dart';
import 'list_text_horizontal.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const CardWeatherHome(),
          const SizedBox(height: 20),
          const ListTextHorizontal(),
          const SizedBox(height: 20),
          Wrap(
            children: const [
              ContainerLampHome(
                icon: Icons.light,
                title: 'Lamp',
                isOpened: true,
              ),
              ContainerLampHome(
                icon: Icons.computer,
                title: 'Computer',
                isOpened: false,
              ),
              ContainerLampHome(
                icon: Icons.timer,
                title: 'Alarm',
                isOpened: true,
              ),
              ContainerLampHome(
                icon: Icons.router,
                title: 'Router',
                isOpened: false,
              ),
              ContainerLampHome(
                icon: Icons.air,
                title: 'Air Contidioner',
                isOpened: false,
              ),
              ContainerLampHome(
                icon: Icons.camera,
                title: 'Camera',
                isOpened: true,
              ),
            ],
          ),
          const ContainerMusicFooter(),
        ],
      ),
    );
  }
}

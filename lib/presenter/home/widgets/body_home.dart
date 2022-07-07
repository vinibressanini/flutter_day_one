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
              ContainerLampHome(),
              ContainerLampHome(),
              ContainerLampHome(),
              ContainerLampHome(),
              ContainerLampHome(),
              ContainerLampHome(),
            ],
          ),
          const ContainerMusicFooter(),
        ],
      ),
    );
  }
}

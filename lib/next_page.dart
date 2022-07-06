import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_assets.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(rainImg),
           const Text(
            "Teste assets font",
            style: TextStyle(
              fontSize: 45,
              fontFamily: 'Schuyler'
            ),
          ),
          const Text(
            "Teste assets font",
            style: TextStyle(
              fontSize: 45,
            ),
          ),
        ],
      ),
    );
  }
}

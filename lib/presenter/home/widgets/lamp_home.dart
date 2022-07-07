import 'package:flutter/material.dart';

class ContainerLampHome extends StatelessWidget {
  const ContainerLampHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue.shade700,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(4, 5),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.light,
                color: Colors.cyan.shade50,
                size: 32,
              ),
              Icon(
                Icons.circle,
                color: Colors.cyan.shade50,
                size: 25,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lamp",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.cyan.shade50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "OPENED",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey.shade300,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


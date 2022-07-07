import 'package:flutter/material.dart';

class ContainerLampHome extends StatelessWidget {
  final bool isOpened;
  final IconData icon;
  final String title;

  const ContainerLampHome({
    Key? key,
    required this.isOpened,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isOpened ? Colors.blue.shade700 : Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(4, 5),
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
                icon,
                color: isOpened ? Colors.cyan.shade50 : Colors.blue.shade700,
                size: 32,
              ),
              Icon(
                Icons.circle,
                color: isOpened ? Colors.white : Colors.red,
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
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: isOpened ? Colors.cyan.shade50 : Colors.black,
                    fontWeight: FontWeight.bold,
                    
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  isOpened ? 'OPENED' : 'CLOSED',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.w900
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

import 'package:flutter/material.dart';

class ContainerQuick extends StatelessWidget {
  const ContainerQuick(
      {required this.title,
      required this.subtitle,
      required this.image,
      required this.color,
      this.secondsubtitle,
      required this.imagewidth,
      required this.imageheight,
      super.key});

  final String title;
  final String subtitle;
  final String? secondsubtitle;
  final String image;
  final Color color;
  final double imagewidth;
  final double imageheight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: color,
      child: Stack(
        children: [
          Positioned(
            right: -20,
            bottom: -20,
            child: Image.asset(
              image,
              width: imagewidth,
              height: imageheight,
              color: Colors.white38,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  secondsubtitle!,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

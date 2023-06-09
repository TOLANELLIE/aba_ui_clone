import 'package:flutter/material.dart';

import '../colors/color_theme.dart';

class LoanOption extends StatelessWidget {
  const LoanOption(
      {required this.color,
      required this.title,
      required this.subtitle,
      required this.imagepath,
      required this.clicktitle,
      super.key});

  final String title;
  final String subtitle;

  final String imagepath;
  final String clicktitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 0),
              blurRadius: 1,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //profile
                Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    imagepath,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),

                //Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 290,
                      child: Text(
                        subtitle,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ],
                )
              ],
            ),

            const SizedBox(height: 10),
            //New joint
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  clicktitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: appbar,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: appbar,
                  size: 18,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

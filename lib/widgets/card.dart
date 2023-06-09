import 'package:flutter/material.dart';

class CardAccount extends StatelessWidget {
  const CardAccount(
      {required this.leadingcolor,
      required this.titlesaving,
      required this.subtitlesaving,
      required this.defaultcolor,
      required this.defaulttext,
      super.key});

  final Color leadingcolor;
  final String titlesaving;
  final String subtitlesaving;
  final Color defaultcolor;
  final String defaulttext;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),

        //leading
        Container(
          height: 100,
          width: 10,
          decoration: BoxDecoration(
            color: leadingcolor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, 0),
                blurRadius: 10,
                spreadRadius: 0,
              ),
            ],
          ),
        ),
        //
        Expanded(
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(5, 0),
                  blurRadius: 20,
                  spreadRadius: -10,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
                left: 10,
                right: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Saving
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        titlesaving,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Image.asset(
                        'assets/image/more.png',
                        width: 30,
                        height: 30,
                        color: Colors.grey.shade700,
                      ),
                    ],
                  ),
                  //account number
                  Row(
                    children: [
                      Text(
                        subtitlesaving,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 20,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                          right: 5,
                          left: 5,
                        ),
                        decoration: BoxDecoration(
                          color: defaultcolor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          defaulttext,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/image/shopping.png',
                        width: 30,
                        height: 30,
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'xx.xx  ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'USD',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}

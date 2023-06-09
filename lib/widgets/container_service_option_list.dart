import 'package:aba_ui_clone/widgets/service_disc_tag.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerServiceOptionList extends StatelessWidget {
  ContainerServiceOptionList(
      {required this.title,
      required this.subtitle,
      required this.distag,
      required this.color,
      this.discColor,
      required this.logobackgroundcolor,
      super.key});

  final String title;
  final String subtitle;
  final String distag;
  final Color color;
  Color? discColor;
  final Color logobackgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
        left: 10,
        right: 10,
      ),
      height: 250,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 0),
            color: Colors.black,
            blurRadius: 1,
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 0,
                      bottom: 0,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: logobackgroundcolor,
                              borderRadius: BorderRadius.circular(250),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0, 0),
                                  blurRadius: 1,
                                )
                              ]),
                        ),

                        //
                        const SizedBox(width: 20),
                        //text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  overflow: TextOverflow.ellipsis),
                            ),
                            Text(
                              subtitle,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          //disc tag
          Positioned(
            top: 20,
            child: ServiceDiscTag(
              discColor: discColor,
              text: distag,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:aba_ui_clone/widgets/container_service.dart';
import 'package:aba_ui_clone/widgets/container_service_option_list.dart';
import 'package:aba_ui_clone/widgets/contanier_service_option.dart';
import 'package:aba_ui_clone/widgets/servie_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../colors/color_theme.dart';
import 'main_page.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  static const routename = 'service_page';

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appbar,
        leading: GestureDetector(
          onTap: () {
            GoRouter.of(context).pop(MainPage.routename);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 24,
          ),
        ),
        automaticallyImplyLeading: false,
        title: RichText(
          text: const TextSpan(
            children: [
              //ABA title
              TextSpan(
                text: 'ABA',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              //'
              TextSpan(
                text: '\' ',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),

              //Accoount
              TextSpan(
                text: ' Services',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        // ignore: non_constant_identifier_names
        onNotification: ((OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        }),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
                color: Colors.transparent,
                child: ContainerService(
                  imageheight: 130,
                  imagewidth: 130,
                  title: 'Services',
                  subtitle: 'Get instant access to your favorite services ',
                  image: 'assets/image/widget.png',
                  color: appbar,
                  color2: Colors.greenAccent.shade400.withOpacity(0.8),
                  secondsubtitle: 'provided by external partners of ABA Bank.',
                ),
              ),

              //
              const SizedBox(height: 20),
              const ServiceTitle(
                title: 'Essentials',
                subtitle: '',
              ),

              //
              ContainerServiceOption(
                logobackgroundcolor: Colors.indigo,
                discColor: Colors.red,
                color: Colors.orange.shade800,
                title: 'Cinema Ticket',
                subtitle:
                    'Book tickets the latest movies in cinemas with \nhassle-free payment',
                distag: '30% off Prime Cineplex',
              ),

              //
              const SizedBox(height: 10),
              const ServiceTitle(
                title: 'Shopping',
                subtitle: '',
              ),

              //
              ContainerServiceOption(
                logobackgroundcolor: Colors.white,
                title: 'The Fresh',
                subtitle:
                    'We provide Japanese quality organic vegetables \nhome delivery service.',
                distag: '',
                color: Colors.brown.shade300,
              ),

              //
              const SizedBox(height: 10),
              const ServiceTitle(
                title: 'Technology',
                subtitle: '',
              ),

              //
              ContainerServiceOption(
                logobackgroundcolor: Colors.white,
                title: 'Web Hosting',
                subtitle:
                    'Simple and quick way to create your own \nwebsite, e-mail ad domain name. W WEB...',
                distag: '',
                color: Colors.green,
              ),

              //
              const SizedBox(height: 10),
              const ServiceTitle(
                title: 'Insurance',
                subtitle:
                    'External partner aprroved by National Bank in Cambodia.',
              ),
              const SizedBox(height: 10),

              //
              ContainerServiceOption(
                logobackgroundcolor: Colors.green,
                title: 'Manulife Cambodia',
                subtitle:
                    'Get \$10,000 coverage in case of traffic accident \nand any types of accident',
                distag: '',
                color: Colors.greenAccent,
              ),

              //
              const SizedBox(height: 10),
              const ServiceTitle(
                title: 'Education & Training',
                subtitle: '',
              ),

              //
              Container(
                color: Colors.transparent,
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  children: [
                    const SizedBox(width: 10),

                    //
                    ContainerServiceOptionList(
                      title: 'Bookeyond',
                      subtitle:
                          'Electonic books for reading or\nlistening with full feature and...',
                      distag: '50% off',
                      color: Colors.blue,
                      logobackgroundcolor: Colors.blue,
                      discColor: Colors.red,
                    ),

                    //
                    ContainerServiceOptionList(
                      title: 'Tesdopi',
                      subtitle:
                          'Competency-based Learning\nApp for Grade 7-12 and Univ...',
                      distag: '',
                      color: Colors.cyan.shade900,
                      logobackgroundcolor: Colors.cyan.shade900,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),

              //
              const SizedBox(height: 10),
              const ServiceTitle(
                title: 'Transportation',
                subtitle: '',
              ),

              //
              Container(
                color: Colors.transparent,
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  children: [
                    const SizedBox(width: 10),

                    //
                    ContainerServiceOptionList(
                      title: 'VET Express',
                      subtitle:
                          'Enjoy Your Trip!\nBook bus and speed boat tic...',
                      distag: '',
                      color: Colors.orange.shade900,
                      logobackgroundcolor: Colors.orange.shade900,
                    ),

                    //
                    ContainerServiceOptionList(
                      title: 'Camboticket',
                      subtitle:
                          'The No. 1 Bus, Ferry and Taxi\nOnline Ticketing Website for ...',
                      distag: '',
                      color: Colors.cyanAccent,
                      logobackgroundcolor: Colors.cyanAccent,
                    ),
                    const SizedBox(width: 10),

                    //
                    ContainerServiceOptionList(
                      title: 'BookMeBus',
                      subtitle:
                          'Find the best deals on bus\nand ferry tickets for most des...',
                      distag: '',
                      color: Colors.cyanAccent.shade700,
                      logobackgroundcolor: Colors.cyanAccent.shade700,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),

              //
              const SizedBox(height: 10),
              const ServiceTitle(
                title: 'Travel & Tours',
                subtitle: '',
              ),

              //
              Container(
                color: Colors.transparent,
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  children: [
                    const SizedBox(width: 10),

                    //
                    ContainerServiceOptionList(
                      title: 'Bookmefly',
                      subtitle:
                          'Book air ticket to destinations\nworldwide with offering best ...',
                      distag: '',
                      color: Colors.yellow.shade900,
                      logobackgroundcolor: Colors.yellow.shade900,
                    ),

                    //
                    ContainerServiceOptionList(
                      title: 'Agoda',
                      subtitle:
                          'Book hotels, resorts\nand many other types of acc...',
                      distag: 'Up to 30% off',
                      color: Colors.black,
                      logobackgroundcolor: Colors.black,
                      discColor: Colors.red,
                    ),
                    const SizedBox(width: 10),

                    //
                    ContainerServiceOptionList(
                      title: 'Booking.com',
                      subtitle:
                          'Book accommodations\nvirtually anywhere in the worl...',
                      distag: 'Up to 12% cashback',
                      color: Colors.cyan.shade200,
                      logobackgroundcolor: Colors.cyan.shade200,
                      discColor: Colors.red,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

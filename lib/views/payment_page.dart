import 'package:aba_ui_clone/views/main_page.dart';
import 'package:aba_ui_clone/widgets/contanier_quick.dart';
import 'package:aba_ui_clone/widgets/quick_payment_option.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../colors/color_theme.dart';

class PayemntsPage extends StatefulWidget {
  const PayemntsPage({super.key});
  static const routename = 'payment_page';

  @override
  State<PayemntsPage> createState() => _PayemntsPageState();
}

class _PayemntsPageState extends State<PayemntsPage> {
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
                text: ' Payments',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Image.asset(
            'assets/image_payment/search.png',
            width: 25,
            height: 25,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
        ],
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
                child: const ContainerQuick(
                  imageheight: 130,
                  imagewidth: 130,
                  title: 'Quick Payments',
                  subtitle: 'Top your phone, pay your bills like your',
                  image: 'assets/image_payment/coin.png',
                  color: Colors.red,
                  secondsubtitle:
                      'children\'s school fees, any time, free charge.',
                ),
              ),

              //
              const SizedBox(height: 20),

              //option 1
              const QuickPaymentOption(
                  color: Colors.red,
                  titles: 'Choose from template',
                  subtitile: 'Pay bills from your favorites list',
                  imagepath: 'assets/image_payment/coin.png'),

              //
              const SizedBox(height: 10),

              //option 2
              const QuickPaymentOption(
                  color: Colors.cyan,
                  titles: 'Mobile Top-up',
                  subtitile: 'Top-up own phone or other\'s phones',
                  imagepath: 'assets/image_payment/telephone.png'),

              //
              const SizedBox(height: 10),

              //option 3
              const QuickPaymentOption(
                  color: Colors.indigo,
                  titles: 'Utilities',
                  subtitile: 'Pay for electricity, water and waste bills',
                  imagepath: 'assets/image_payment/plug.png'),

              //
              const SizedBox(height: 10),

              //option 4
              QuickPaymentOption(
                  color: Colors.pink.shade300,
                  titles: 'Public Services',
                  subtitile: 'Pay for taxes or public services',
                  imagepath: 'assets/image_payment/bank-building.png'),

              //
              const SizedBox(height: 10),

              //option 5
              QuickPaymentOption(
                  color: Colors.green.shade600,
                  titles: 'Internet & TV',
                  subtitile: 'Pay your internet and TV bills',
                  imagepath: 'assets/image_payment/wifi.png'),

              //
              const SizedBox(height: 10),

              //option 6
              const QuickPaymentOption(
                  color: Colors.purple,
                  titles: 'Real Estate',
                  subtitile: 'Pay for property',
                  imagepath: 'assets/image_payment/home-icon-silhouette.png'),

              //
              const SizedBox(height: 10),

              //option 7
              const QuickPaymentOption(
                  color: Colors.red,
                  titles: 'Insurance',
                  subtitile: 'Pay for insurance premiums',
                  imagepath: 'assets/image_payment/protection.png'),

              //
              const SizedBox(height: 10),

              //option 8
              QuickPaymentOption(
                  color: Colors.green.shade300,
                  titles: 'Finans & Investment',
                  subtitile: 'Payment for 3rd party financial services',
                  imagepath: 'assets/image_payment/loan.png'),

              //
              const SizedBox(height: 10),

              //option 9
              QuickPaymentOption(
                  color: Colors.cyan.shade900,
                  titles: 'Trading & Distribution',
                  subtitile: 'Pay trading partners or distributors',
                  imagepath: 'assets/image_payment/cargo-truck.png'),

              //
              const SizedBox(height: 10),

              //option 10
              QuickPaymentOption(
                  color: Colors.greenAccent.shade400,
                  titles: 'Education',
                  subtitile: 'Pay for school fees',
                  imagepath: 'assets/image_payment/college-graduation.png'),

              //
              const SizedBox(height: 10),

              //option 11
              QuickPaymentOption(
                  color: Colors.blue.shade800,
                  titles: 'Entertainment',
                  subtitile: 'Shop for credit for games and apps',
                  imagepath: 'assets/image_payment/game-controller.png'),

              //
              const SizedBox(height: 10),

              //option 12
              QuickPaymentOption(
                  color: Colors.blue.shade900,
                  titles: 'Membership & Subscription',
                  subtitile: 'Pay for your subcriptions',
                  imagepath: 'assets/image_payment/member-card.png'),

              //
              const SizedBox(height: 10),

              //option 13
              QuickPaymentOption(
                  color: Colors.purple.shade900,
                  titles: 'Travel & Tours',
                  subtitile: 'Pay to travel service-prviders',
                  imagepath: 'assets/image_payment/luggage.png'),

              //
              const SizedBox(height: 10),

              //option 14
              const QuickPaymentOption(
                  color: Colors.pink,
                  titles: 'Charity & Donation',
                  subtitile: 'Donation to charitable organizations',
                  imagepath: 'assets/image_payment/charity.png'),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

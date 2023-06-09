import 'package:aba_ui_clone/views/main_page.dart';
import 'package:aba_ui_clone/widgets/account_option.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../colors/color_theme.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  static const routename = 'new_account';
  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                text: ' Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              //Opening
              TextSpan(
                text: ' Opening',
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
              //New account
              Container(
                height: 250,
                width: double.infinity,
                color: appbar,
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Container(
                      width: 100,
                      height: 100,
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white38,
                      ),
                      child: Image.asset(
                        'assets/image/notes.png',
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'New Account',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              //Option 1
              const AccountOption(
                color: Colors.indigo,
                title: 'Mobile Joint Account',
                subtitle:
                    'Create Joint Account with family members or \n partners to manage savings and spendings jointly.',
                imagepath: 'assets/image_newacc/address-book.png',
                clicktitle: 'NEW JOINT ACCOUNT',
              ),

              //Option 2
              const AccountOption(
                color: Colors.red,
                title: 'Mobile Fixed Deposit',
                subtitle:
                    'Open Fixed Deposit with ABA and see your savings \ngrow. You can open Fixed Deposit in USD or KHR and \nchoose interest earning option between monthly and at maturity.',
                imagepath: 'assets/image_newacc/safebox.png',
                clicktitle: 'MAKE NEW DEPOSIT',
              ),

              //Option 3
              AccountOption(
                color: Colors.purple.shade400,
                title: 'Junior Account',
                subtitle:
                    'Junior Account is a basic joint savings account \ndesigned for kids to help them understand the value \nof money and learn how to save. With this feature \nparents can alway stay informed on their financial \nactivities.',
                imagepath: 'assets/image_newacc/boy-face.png',
                clicktitle: 'CREATE ACCOUNT',
              ),

              //Option 4
              AccountOption(
                color: Colors.yellow.shade900,
                title: 'Premium Account Number',
                subtitle:
                    'Create a new ABA account with your favorite number \nthat easy to remember with competitive interest rate and other great features.',
                imagepath: 'assets/image_newacc/star.png',
                clicktitle: 'EXPLORE MORE',
              ),

              //Option 5
              const AccountOption(
                color: Colors.cyan,
                title: 'Mobile Savings Account',
                subtitle:
                    'Our most popular bank account that helps you reach \nsavings goals with competitive interest rate and other \ngreat features.',
                imagepath: 'assets/image_newacc/elephant-alone.png',
                clicktitle: 'OPEN NEW ACCOUNT',
              ),

              //Option 6
              AccountOption(
                color: Colors.greenAccent.shade700,
                title: 'Mobile Flexi Account',
                subtitle:
                    'With ABA Flexi Account in KHR you can deposit or \nand withdraw funds any time and keep earning high \ninterest on your ongoing balance.',
                imagepath: 'assets/image_newacc/riel.png',
                clicktitle: 'OPEN NEW ACCOUNT',
              ),

              //Option 7
              AccountOption(
                color: Colors.cyan.shade900,
                title: 'Mobile Trading Account',
                subtitle:
                    'Open Mobile Trading Account that can be used for \nfunding your brokerage at our partnered companies. \nFind partner companies list at: Payments > Finance & \nInvestment.',
                imagepath: 'assets/image_newacc/economic.png',
                clicktitle: 'OPEN NEW ACCOUNT',
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

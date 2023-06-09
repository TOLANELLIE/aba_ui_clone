import 'package:aba_ui_clone/colors/color_theme.dart';
import 'package:aba_ui_clone/views/main_page.dart';
import 'package:aba_ui_clone/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  static const routename = 'account_page';
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
                text: ' Accounts',
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
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                color: body1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.,
                    children: [
                      Container(
                        width: 100,
                        height: 50,
                        color: Colors.transparent,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'All Account',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Text(
                              'Summary',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          color: Colors.transparent,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 50,
                                ),
                                child: Text(
                                  'Total amout',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.white30,
                                  height: 100,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 50,
                                ),
                                child: Text(
                                  '\$ 3x.xxx',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.close_rounded,
                  color: Colors.white30,
                  size: 20,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          //card 1
          CardAccount(
              leadingcolor: Colors.cyan.shade200,
              titlesaving: 'Savings',
              subtitlesaving: 'xxx xxx xxx | Savings',
              defaultcolor: Colors.cyan.shade200,
              defaulttext: 'Default'),

          const SizedBox(height: 10),

          //card 2
          CardAccount(
            leadingcolor: Colors.indigo.shade200,
            titlesaving: 'Payroll',
            subtitlesaving: 'xxx xxx xxx | Payroll',
            defaultcolor: Colors.transparent,
            defaulttext: '',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Image.asset(
          'assets/image/notes.png',
          width: 25,
          height: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}

import 'package:aba_ui_clone/colors/color_theme.dart';
import 'package:aba_ui_clone/model/card_menu_model.dart';

import 'package:flutter/material.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../widgets/contanier_quick.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const routename = 'main_page';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final colorshceme = Theme.of(context).colorScheme;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: appbar,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            children: [
              //ABA title
              const TextSpan(
                text: 'ABA',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                  text: '\'',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: quickpayment,
                  )),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(PhosphorIcons.fill.list),
          iconSize: 24,
          color: Colors.white,
          splashRadius: 24,
        ),
        actions: [
          IconButton(
            splashRadius: 24,
            onPressed: () {},
            icon: Icon(
              PhosphorIcons.fill.bell,
              size: 24,
              color: Colors.white,
            ),
          ),
          IconButton(
            splashRadius: 24,
            onPressed: () {},
            icon: Icon(
              PhosphorIcons.fill.phoneCall,
              size: 24,
              color: Colors.white,
            ),
          ),
          IconButton(
            splashRadius: 24,
            onPressed: () {},
            icon: Icon(
              PhosphorIcons.fill.qrCode,
              size: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                radius: 0.6,
                colors: [
                  Colors.white,
                  colorshceme.secondary,
                ],
              ),
            ),
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 0.7,
              crossAxisSpacing: 0.7,
              childAspectRatio: 1,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                ...List.generate(
                  MenuModel.list.length,
                  (index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        color: colorshceme.secondary,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              MenuModel.list[index].icon,
                              color: Colors.white,
                              size: 30,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              MenuModel.list[index].title,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          // //Function 1
          // Expanded(
          //   child: Row(
          //     children: [
          //       ContanierFunction(
          //         title: 'Accounts',
          //         image: 'assets/image/wallet.png',
          //         onTap: () {
          //           GoRouter.of(context).pushNamed(AccountPage.routename);
          //         },
          //       ),
          //       const VerticalDivider(
          //         color: Colors.white30,
          //         thickness: 1,
          //       ),
          //       const ContanierFunction(
          //           title: 'Cards', image: 'assets/image/credit-card.png'),
          //       const VerticalDivider(
          //         color: Colors.white30,
          //         thickness: 1,
          //       ),
          //       ContanierFunction(
          //         title: 'Payments',
          //         image: 'assets/image/coin.png',
          //         onTap: () {
          //           GoRouter.of(context).pushNamed(PayemntsPage.routename);
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          // const Divider(
          //   color: Colors.white30,
          //   thickness: 1,
          // ),

          // //Function 2
          // Expanded(
          //   child: Row(
          //     children: [
          //       ContanierFunction(
          //         title: 'New Accounts',
          //         image: 'assets/image/notes.png',
          //         onTap: () {
          //           GoRouter.of(context).pushNamed(NewAccount.routename);
          //         },
          //       ),
          //       const VerticalDivider(
          //         color: Colors.white30,
          //         thickness: 1,
          //       ),
          //       const ContanierFunction(
          //           title: 'Cash to ATM', image: 'assets/image/cash.png'),
          //       const VerticalDivider(
          //         color: Colors.white30,
          //         thickness: 1,
          //       ),
          //       ContanierFunction(
          //         title: 'Transfers',
          //         image: 'assets/image/transfer.png',
          //         onTap: () {
          //           GoRouter.of(context).pushNamed(TransferPage.routename);
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          // const Divider(
          //   color: Colors.white30,
          //   thickness: 1,
          // ),

          // //Function 3
          // Expanded(
          //   child: Row(
          //     children: [
          //       const ContanierFunction(
          //           title: 'Scan QR', image: 'assets/image/qr-code.png'),
          //       const VerticalDivider(
          //         color: Colors.white30,
          //         thickness: 1,
          //         indent: 0,
          //         endIndent: 0,
          //       ),
          //       ContanierFunction(
          //         title: 'Loans',
          //         image: 'assets/image/loan.png',
          //         onTap: () {
          //           GoRouter.of(context).pushNamed(LoansPage.routename);
          //         },
          //       ),
          //       const VerticalDivider(
          //         color: Colors.white30,
          //         thickness: 1,
          //       ),
          //       ContanierFunction(
          //         title: 'Services',
          //         image: 'assets/image/widget.png',
          //         onTap: () {
          //           GoRouter.of(context).pushNamed(ServicesPage.routename);
          //         },
          //       ),
          //     ],
          //   ),
          // ),

          //Quick Transfer
          Flexible(
            child: ContainerQuick(
              imageheight: 100,
              imagewidth: 100,
              title: 'Quick Transfer',
              subtitle: 'Create your templates here to make transfer quicker',
              image: 'assets/image/transfer.png',
              color: Colors.cyan.shade200,
              secondsubtitle: '',
            ),
          ),

          //Quick Payment
          const Flexible(
            child: ContainerQuick(
              imageheight: 100,
              imagewidth: 100,
              title: 'Quick Payments',
              subtitle: 'Paying your bills with templates is faster',
              image: 'assets/image/coin.png',
              color: Colors.red,
              secondsubtitle: '',
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: colorshceme.secondary,
        child: Column(
          children: [
            //UserDrawerHeader
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: colorshceme.secondary,
              ),
              accountName: const Text('ABA BANK'),
              accountEmail: const Text(
                'infi@aba.com.kh',
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'A',
                  style: TextStyle(
                    fontSize: 30,
                    color: colorshceme.secondary,
                  ),
                ),
              ),
            ),
            const Divider(
              color: Colors.white24,
              thickness: 1,
            ),

            //Scheduled
            ListTile(
              onTap: () {},
              splashColor: Colors.cyan,
              title: const Text(
                'Scheduled Payment',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                PhosphorIcons.fill.calendarPlus,
                size: 24,
                color: Colors.white,
              ),
            ),

            //Checkbook
            ListTile(
              onTap: () {},
              splashColor: Colors.cyan,
              title: const Text(
                'Checkbook',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                PhosphorIcons.fill.bookmark,
                size: 24,
                color: Colors.white,
              ),
            ),

            //ABA Places
            ListTile(
              onTap: () {},
              splashColor: Colors.cyan,
              title: const Text(
                'ABA Places',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                PhosphorIcons.fill.mapPin,
                size: 24,
                color: Colors.white,
              ),
            ),

            //Exchnage Rates
            ListTile(
              onTap: () {},
              splashColor: Colors.cyan,
              title: const Text(
                'Exchange Rates',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                PhosphorIcons.fill.currencyDollar,
                size: 24,
                color: Colors.white,
              ),
            ),

            //Locator
            ListTile(
              onTap: () {},
              splashColor: Colors.cyan,
              title: const Text(
                'Locator',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                PhosphorIcons.fill.mapPinLine,
                size: 24,
                color: Colors.white,
              ),
            ),

            //Invite fri
            ListTile(
              onTap: () {},
              splashColor: Colors.cyan,
              title: const Text(
                'Invite Friend',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                PhosphorIcons.fill.userPlus,
                size: 24,
                color: Colors.white,
              ),
            ),

            //Contact Us
            ListTile(
              onTap: () {},
              splashColor: Colors.cyan,
              title: const Text(
                'Locator',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                PhosphorIcons.fill.phoneCall,
                size: 24,
                color: Colors.white,
              ),
            ),

            //Term & Condition
            ListTile(
              onTap: () {},
              splashColor: Colors.cyan,
              title: const Text(
                'Term & Condition',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                PhosphorIcons.fill.notebook,
                size: 24,
                color: Colors.white,
              ),
            ),

            //Settings
            ListTile(
              onTap: () {},
              splashColor: Colors.cyan,
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                PhosphorIcons.fill.gear,
                size: 24,
                color: Colors.white,
              ),
            ),

            const Spacer(),
            const Divider(
              color: Colors.white24,
              thickness: 1,
            ),

            //version
            Container(
              color: Colors.transparent,
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'v3.6.933',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Text(
                    'Last Login: 10:15 | 22 may 23',
                    style: TextStyle(color: Colors.white54, fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

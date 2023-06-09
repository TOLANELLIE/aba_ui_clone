import 'package:aba_ui_clone/widgets/transfer_option.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../colors/color_theme.dart';
import '../widgets/contanier_quick.dart';
import 'main_page.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  static const routename = 'transfer_page';
  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
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
                text: ' Transfer',
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
                child: ContainerQuick(
                  imageheight: 130,
                  imagewidth: 130,
                  title: 'Transfers',
                  subtitle: 'Transfer money to your friends, relatives or ',
                  image: 'assets/image/transfer.png',
                  color: Colors.cyan.shade200,
                  secondsubtitle: 'partners in coupleof simple steps.',
                ),
              ),

              //
              const SizedBox(height: 20),

              //Option 1
              TransferOption(
                  color: Colors.cyan.shade200,
                  titles: 'Choose from template',
                  subtitile: 'Transfer to friends from your templates list',
                  imagepath: 'assets/image_transfer/transfer_fill.png'),

              //
              const SizedBox(height: 10),

              //Option 2
              TransferOption(
                  color: Colors.cyan.shade900,
                  titles: 'Trasnsfer to own ABA account',
                  subtitile: 'Make a transfer to your own account',
                  imagepath: 'assets/image_transfer/user.png'),

              //
              const SizedBox(height: 10),

              //Option 3
              const TransferOption(
                  color: Colors.red,
                  titles: 'Transfer to other ABA account',
                  subtitile: 'Transfer money to other ABA customers',
                  imagepath: 'assets/image_transfer/transfer_outlined.png'),

              //
              const SizedBox(height: 10),

              //Option 4
              TransferOption(
                  color: Colors.greenAccent.shade400,
                  titles: 'Send money to ABA ATM\'s',
                  subtitile: 'Make cardless cash withdrawal at any ABA ATM',
                  imagepath: 'assets/image_transfer/cash.png'),

              //
              const SizedBox(height: 10),

              //Option 4
              TransferOption(
                  color: Colors.redAccent.shade700,
                  titles: 'Transfer to local Banks & Wallets',
                  subtitile: 'Make transfer to banks or wallets in Cambodia',
                  imagepath: 'assets/image_transfer/wallet.png'),

              //
              const SizedBox(height: 10),

              //Option 5
              TransferOption(
                  color: Colors.orange.shade900,
                  titles: 'International Transfers',
                  subtitile: 'Send money abroad via various channels',
                  imagepath: 'assets/image_transfer/world.png'),

              //
              const SizedBox(height: 10),

              //Option 6
              TransferOption(
                  color: Colors.pinkAccent.shade700,
                  titles: 'Transfer to cards',
                  subtitile: 'Transfer money to other bank card users',
                  imagepath: 'assets/image_transfer/money-transfer.png'),

              //
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

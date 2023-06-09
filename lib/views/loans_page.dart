import 'package:aba_ui_clone/widgets/loan_option.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../colors/color_theme.dart';
import 'main_page.dart';

class LoansPage extends StatefulWidget {
  const LoansPage({super.key});

  static const routename = 'loan_page';

  @override
  State<LoansPage> createState() => _LoansPageState();
}

class _LoansPageState extends State<LoansPage> {
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
                text: ' Loans',
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
          //Get Loans
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
                  'Get Loan',
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
          const LoanOption(
            color: Colors.cyan,
            title: 'Instant Loan',
            subtitle:
                'Request Instant Loan to borrow cash of up to 90% \nof your Fixed Deposit amount ad make repayment \nanytime with no penalty for early loan repayment.',
            imagepath: 'assets/image/time.png',
            clicktitle: 'GET NEW LOAN',
          ),

          //Option 2
          LoanOption(
            color: Colors.cyan.shade800,
            title: 'Salary Loan',
            subtitle:
                'Request Salary Loan to borrow cash up to 50% of \nyour Salary and make repayment monthly up to 12 \nmonths.',
            imagepath: 'assets/image/calendar.png',
            clicktitle: 'GET NEW LOAN',
          ),
        ],
      ),
    );
  }
}

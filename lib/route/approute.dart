import 'package:aba_ui_clone/views/account_page.dart';
import 'package:aba_ui_clone/views/loans_page.dart';
import 'package:aba_ui_clone/views/main_page.dart';
import 'package:aba_ui_clone/views/new_account.dart';
import 'package:aba_ui_clone/views/password_page.dart';
import 'package:aba_ui_clone/views/payment_page.dart';
import 'package:aba_ui_clone/views/services_page.dart';
import 'package:aba_ui_clone/views/transfer_page.dart';
import 'package:go_router/go_router.dart';

final approute = GoRouter(
  routes: [
    GoRoute(
      path: '/AccountPage',
      name: 'account_page',
      builder: (context, state) => const AccountPage(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: '/main',
      name: 'main_page',
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: '/payment_page',
      name: 'payment_page',
      builder: (context, state) => const PayemntsPage(),
    ),
    GoRoute(
      path: '/new_account',
      name: 'new_account',
      builder: (context, state) => const NewAccount(),
    ),
    GoRoute(
      path: '/transfer_page',
      name: 'transfer_page',
      builder: (context, state) => const TransferPage(),
    ),
    GoRoute(
      path: '/loan_page',
      name: 'loan_page',
      builder: (context, state) => const LoansPage(),
    ),
    GoRoute(
      path: '/service_page',
      name: 'service_page',
      builder: (context, state) => const ServicesPage(),
    ),
    GoRoute(
      path: '/password_page',
      name: 'password_page',
      builder: (context, state) => const PasswordPage(),
    )
  ],
);

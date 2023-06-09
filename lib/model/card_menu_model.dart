import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MenuModel {
  final String title;
  final IconData icon;

  MenuModel({
    required this.title,
    required this.icon,
  });

  static List<MenuModel> list = [
    MenuModel(
      title: 'Accounts',
      icon: PhosphorIcons.fill.wallet,
    ),
    MenuModel(
      title: 'Cards',
      icon: PhosphorIcons.fill.creditCard,
    ),
    MenuModel(
      title: 'Payments',
      icon: PhosphorIcons.fill.currencyCircleDollar,
    ),
    MenuModel(
      title: 'New Accounts',
      icon: PhosphorIcons.fill.notepad,
    ),
    MenuModel(
      title: 'Cash to ATM',
      icon: PhosphorIcons.fill.money,
    ),
    MenuModel(
      title: 'Transfers',
      icon: PhosphorIcons.fill.arrowClockwise,
    ),
    MenuModel(
      title: 'Scan QR',
      icon: PhosphorIcons.fill.qrCode,
    ),
    MenuModel(
      title: 'Loans',
      icon: PhosphorIcons.fill.handCoins,
    ),
    MenuModel(
      title: 'Services',
      icon: PhosphorIcons.fill.package,
    ),
  ];
}

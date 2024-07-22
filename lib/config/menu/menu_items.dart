import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String route;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.route,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Buttons',
      subTitle: 'Este es el botón',
      route: ButtonsScreen.name,
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Cards',
      subTitle: 'Este es el cards',
      route: CardsScreen.name,
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress',
      subTitle: 'Este es el progress',
      route: '/progress',
      icon: Icons.refresh_rounded),
];

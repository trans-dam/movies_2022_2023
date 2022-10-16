import 'package:movies/styles/constants.dart';
import 'package:flutter/material.dart';

@immutable
class MenuItemData {
  final String name;
  final Icon icon;
  final LinearGradient gradient;

  const MenuItemData(
      {required this.name, required this.icon, required this.gradient});
}

List<MenuItemData> menuItemsData = const [
  MenuItemData(
      name: "Accueil",
      icon: Icon(
        Icons.home,
      ),
      gradient: kHomeGradientButton),
  MenuItemData(
      name: "Paiement",
      icon: Icon(
        Icons.credit_card,
      ),
      gradient: kPaymentGradientButton),
  MenuItemData(
      name: "Réglages",
      icon: Icon(
        Icons.settings,
      ),
      gradient: kSettingsGradientButton),
];

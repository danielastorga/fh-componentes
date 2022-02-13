import 'package:flutter/material.dart';
import 'package:fe_componentes/models/models.dart';
import 'package:fe_componentes/screens/screens.dart';

class AppRoutes {
  static const String initialRoute = 'home';

  static final List<MenuOption> menuOptions = [
    MenuOption(
        name: 'Home', icon: Icons.home, route: 'home', screen: HomeScreen()),
    MenuOption(
        name: 'ListView tipo 1',
        icon: Icons.list_rounded,
        route: 'listview1',
        screen: MyListView1()),
    MenuOption(
        name: 'ListView tipo 2',
        icon: Icons.list_rounded,
        route: 'listview2',
        screen: MyListView2()),
    MenuOption(
        name: 'Tarjetas',
        icon: Icons.card_membership,
        route: 'card',
        screen: CardScreen()),
    MenuOption(
        name: 'Alertas',
        icon: Icons.add_alert_rounded,
        route: 'alert',
        screen: AlertScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext contex) => option.screen});
    }

    return appRoutes;
  }

  //Esto funciona pero de la manera anterior será más conveniente, a efectos de
  //poder generar dinámicamente las rutas a partir de la clase estática AppRoutes
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext contex) => HomeScreen(),
  //   'listview1': (BuildContext context) => MyListView1(),
  //   'listview2': (BuildContext context) => MyListView2(),
  //   'alert': (BuildContext context) => AlertScreen(),
  //   'card': (BuildContext context) => CardScreen(),
  // };
}

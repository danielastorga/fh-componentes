import 'package:flutter/material.dart';
import 'package:fe_componentes/screens/screens.dart';
import 'package:fe_componentes/router/app_routes.dart';
import 'package:fe_componentes/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const MyListView2(),
      // initialRoute: 'home',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (settings) {
        print("Message: $settings");
        return MaterialPageRoute(builder: (context) => AlertScreen());
      },
      theme: AppTheme.themelight,
    );
  }
}

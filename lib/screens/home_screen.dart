import 'package:fe_componentes/router/app_routes.dart';
import 'package:fe_componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fe_componentes/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(
                  menuOptions[index].icon,
                  color: AppTheme.primary,
                ),
                title: Text(menuOptions[index].name),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // final route =
                  //     MaterialPageRoute(builder: (context) => MyListView2());
                  Navigator.pushNamed(context, menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) {
            return Divider();
          },
          itemCount: menuOptions.length),
    );
  }
}

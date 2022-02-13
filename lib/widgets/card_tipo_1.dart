import 'package:flutter/material.dart';

import 'package:fe_componentes/themes/app_theme.dart';

class MyCard1Widget extends StatelessWidget {
  const MyCard1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[50],
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.account_balance_wallet_outlined,
              color: AppTheme.primary,
            ),
            title: Text("Título de mi Card"),
            subtitle: Text(
                "lorem-ipsum.paragraph lorem-ipsum. paragraph lorem-i psum.par agraph  lo rem-ipsum.paragraph "),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Cancel"),
                ),
                SizedBox(width: 20.0),
                TextButton(
                  onPressed: () {},
                  child: Text("Ok"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:fe_componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MyCard2Widget extends StatelessWidget {
  final String url;
  final String subtitle;
  const MyCard2Widget({Key? key, required this.url, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(15.0),
      //     topRight: Radius.circular(15.0),
      //   ),
      // ),
      shadowColor: AppTheme.primary.withOpacity(0.2),
      elevation: 10.0,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(url),
            placeholder: AssetImage("assets/jar-loading.gif"),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
              padding: EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0),
              alignment: AlignmentDirectional.centerEnd,
              child: Text(subtitle)),
        ],
      ),
    );
  }
}

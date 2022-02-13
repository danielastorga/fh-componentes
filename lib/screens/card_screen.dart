import 'package:flutter/material.dart';

import 'package:fe_componentes/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cards - Tarjetas"),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 15.00, horizontal: 20.00),
          children: [
            MyCard1Widget(),
            SizedBox(
              height: 1.0,
            ),
            MyCard2Widget(
              url:
                  "https://www.wallpaperflare.com/static/640/609/100/photo-manipulation-trees-digital-art-landscape-wallpaper-preview.jpg",
            ),
            MyCard2Widget(
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ86lrmWYaRIvZW6v9BE70S7UC7Zi1h_y1XGA&usqp=CAU",
              subtitle: "Caminando por el bosque",
            ),
            MyCard2Widget(
              url:
                  "https://iesvirgendelosreyes.es/wp-content/uploads/2020/05/landscape-3369304_1920-1536x901.jpg",
              subtitle: "La casa del campo",
            ),
            MyCard2Widget(
              url:
                  "https://homs1852.com/wp-content/uploads/2022/02/plataformaelevadora_brazoarticulado_kompe_geniez4525dc.jpg",
              subtitle: "Un brazo articulado",
            ),
          ],
        ));
  }
}

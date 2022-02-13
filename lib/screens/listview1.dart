import 'package:flutter/material.dart';

class MyListView1 extends StatelessWidget {
  const MyListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      "El Libro de Bobafet",
      "Cobra Kai",
      "Outlander",
      "The Good Doctor"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("My ListView 1"),
      ),
      body: ListView(
        children: [
          ...options
              .map((e) => ListTile(
                    title: Text(e),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ))
              .toList()
        ],
      ),
    );
  }
}

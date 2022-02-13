import 'package:flutter/material.dart';

class MyListView2 extends StatelessWidget {
  const MyListView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      "El Libro de Bobafet",
      "Cobra Kai",
      "Outlander",
      "The Good Doctor",
      "El Zorro"
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("My ListView 2"),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.local_movies),
            title: Text(options[index]),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
            ),
            onTap: () {
              final String game = options[index];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}

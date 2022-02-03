import 'package:flutter/material.dart';
import 'package:flutter_application_2/util/custom_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Persistência"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: buildSvgIcon("images/sqlite-icon.svg"),
            title: const Text("SQLite"),
            subtitle: const Text("Lista de Pessoas"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/sqlite");
            },
          ),
          divisorListMain(),
          ListTile(
            leading: buildSvgIcon("images/db.svg"),
            title: const Text("Floor"),
            subtitle: const Text("Lista de Livros"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/nosql");
            },
          ),
          divisorListMain(),
          ListTile(
            leading: buildSvgIcon("images/firebase-icon.svg"),
            title: const Text("Firebase"),
            subtitle: const Text("Lista de Carros"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/firebase");
            },
          )
        ],
      ),
    );
  }
}

import 'package:esync_controledeestoque/screens/cadastros/cadastros_page.dart';
import 'package:esync_controledeestoque/screens/dashboard/dashboard.dart';
import 'package:esync_controledeestoque/screens/locacoes/locacoes.dart';
import 'package:esync_controledeestoque/screens/utilitarios/utilitarios.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ESync",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            )
          ],
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Dashboard",
            ),
            Tab(
              icon: Icon(Icons.store_mall_directory_outlined),
              text: "Locações",
            ),
            Tab(
              icon: Icon(Icons.list),
              text: "Cadastros",
            ),
            Tab(
              icon: Icon(Icons.settings_input_component_outlined),
              text: "Utilitários",
            )
          ]),
        ),
        body: const TabBarView(children: [
          Dashboard(),
          Locacoes(),
          Cadastros(),
          Utilitarios(),
        ]),
      ),
    );
  }
}

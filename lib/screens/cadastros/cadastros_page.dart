import 'package:esync_controledeestoque/screens/cadastros/compradores_tab.dart';
import 'package:esync_controledeestoque/screens/cadastros/equipamentos_tab.dart';
import 'package:esync_controledeestoque/screens/cadastros/fornecedores_tab.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cadastros extends StatelessWidget {
  const Cadastros({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: const TabBar(tabs: [
              Tab(
                text: "Equipamentos",
              ),
              Tab(
                text: "Fornecedores",
              ),
              Tab(
                text: "Compradores",
              ),
              Tab(
                text: "Utilitários",
              )
            ]),
          ),
          body: TabBarView(
            children: [
              EquipamentosTab(),
              FornecedorTab(),
              CompradoresTab(context),
              const Center(
                child: Text(
                  "UTILITÁRIOS",
                  style: TextStyle(fontSize: 42),
                ),
              )
            ],
          )),
    );
  }
}

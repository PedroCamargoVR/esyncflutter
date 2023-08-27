import 'package:data_table_2/data_table_2.dart';
import 'package:esync_controledeestoque/data/models/fornecedor.dart';
import 'package:esync_controledeestoque/data/table_sources/fornecedor_data_table_source.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FornecedorTab extends StatelessWidget {
  FornecedorTab({super.key});

  List<Fornecedor> fornecedores = [
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
    Fornecedor(
        id: 1,
        cnpj: 12,
        nomeFantasia: "Teste 1",
        razaoSocial: "Teste 1",
        dataCadastro: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("+ Adicionar Fornecedor"),
              )
            ],
          ),
        ),
        Expanded(
          child: PaginatedDataTable2(
            source: FornecedorDataTableSource(fornecedores),
            rowsPerPage: 8,
            availableRowsPerPage: const [5, 10, 15],
            columns: const [
              DataColumn2(label: Text("ID"), size: ColumnSize.S),
              DataColumn2(label: Text("Nome Fantasia"), size: ColumnSize.M),
              DataColumn2(label: Text("Razão Social"), size: ColumnSize.M),
              DataColumn2(label: Text("CNPJ"), size: ColumnSize.M),
              DataColumn2(label: Text("Data de Cadastro"), size: ColumnSize.M),
            ],
          ),
        ),
      ],
    );
  }
}

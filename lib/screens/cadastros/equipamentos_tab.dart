import 'package:data_table_2/data_table_2.dart';
import 'package:esync_controledeestoque/data/models/equipamento.dart';
import 'package:esync_controledeestoque/data/table_sources/equipamento_data_table_source.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EquipamentosTab extends StatelessWidget {
  EquipamentosTab({super.key});

  List<Equipamento> equipamentos = [
    Equipamento(
        id: 1,
        id_forecedor: 2,
        id_tipoEquipamento: 3,
        id_status: 4,
        descricao: "Testando teste 1",
        preco: 4.99,
        dataCompra: DateTime(2022, 07, 14, 0, 0, 0),
        ativo: true),
    Equipamento(
        id: 1,
        id_forecedor: 2,
        id_tipoEquipamento: 3,
        id_status: 4,
        descricao: "Testando teste 1",
        preco: 4.99,
        dataCompra: DateTime(2022, 07, 14, 0, 0, 0),
        ativo: true),
    Equipamento(
        id: 1,
        id_forecedor: 2,
        id_tipoEquipamento: 3,
        id_status: 4,
        descricao: "Testando teste 1",
        preco: 4.99,
        dataCompra: DateTime(2022, 07, 14, 0, 0, 0),
        ativo: true),
    Equipamento(
        id: 1,
        id_forecedor: 2,
        id_tipoEquipamento: 3,
        id_status: 4,
        descricao: "Testando teste 1",
        preco: 4.99,
        dataCompra: DateTime(2022, 07, 14, 0, 0, 0),
        ativo: false),
    Equipamento(
        id: 1,
        id_forecedor: 2,
        id_tipoEquipamento: 3,
        id_status: 4,
        descricao: "Testando teste 1",
        preco: 4.99,
        dataCompra: DateTime(2022, 07, 14, 0, 0, 0),
        ativo: true),
    Equipamento(
        id: 1,
        id_forecedor: 2,
        id_tipoEquipamento: 3,
        id_status: 4,
        descricao: "Testando teste 1",
        preco: 4.99,
        dataCompra: DateTime(2022, 07, 14, 0, 0, 0),
        ativo: false),
    Equipamento(
        id: 1,
        id_forecedor: 2,
        id_tipoEquipamento: 3,
        id_status: 4,
        descricao: "Testando teste 1",
        preco: 4.99,
        dataCompra: DateTime(2022, 07, 14, 0, 0, 0),
        ativo: true),
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
                child: const Text("+ Adicionar Equipamento"),
              ),
            ],
          ),
        ),
        Expanded(
          child: PaginatedDataTable2(
            columns: const [
              DataColumn2(label: Text("ID"), size: ColumnSize.S),
              DataColumn2(label: Text("Descrição"), size: ColumnSize.M),
              DataColumn2(label: Text("Preço"), size: ColumnSize.M),
              DataColumn2(label: Text("Data da Compra"), size: ColumnSize.M),
              DataColumn2(label: Text("Ativo"), size: ColumnSize.S),
            ],
            source: EquipamentoDataTableSource(equipamentos),
          ),
        )
      ],
    );
  }
}

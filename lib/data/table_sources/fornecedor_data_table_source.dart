import 'package:esync_controledeestoque/data/models/fornecedor.dart';
import 'package:flutter/material.dart';

class FornecedorDataTableSource extends DataTableSource {
  final List<Fornecedor> fornecedores;
  final int _selectedRowCount = 0;

  FornecedorDataTableSource(this.fornecedores);

  @override
  DataRow? getRow(int index) {
    if (index >= fornecedores.length) {
      return null;
    }
    final Fornecedor fornecedor = fornecedores[index];
    return DataRow.byIndex(
      onLongPress: () {
        print("AGORA É SÓ ME EDITAR");
      },
      index: index,
      selected: fornecedor.selected,
      cells: [
        DataCell(Text('${fornecedor.getId}')),
        DataCell(Text(fornecedor.getNomeFantasia)),
        DataCell(Text(fornecedor.getRazaoSocial)),
        DataCell(Text('${fornecedor.getCnpj}')),
        DataCell(Text(
            '${fornecedor.getDataCadastro.day}/${fornecedor.getDataCadastro.month}/${fornecedor.getDataCadastro.year}')),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => fornecedores.length;

  @override
  int get selectedRowCount => _selectedRowCount;
}

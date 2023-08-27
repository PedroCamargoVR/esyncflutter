import 'package:esync_controledeestoque/data/models/equipamento.dart';
import 'package:flutter/material.dart';

class EquipamentoDataTableSource extends DataTableSource {
  final List<Equipamento> equipamentos;
  final int _selectedRowCount = 0;

  EquipamentoDataTableSource(this.equipamentos);

  @override
  DataRow? getRow(int index) {
    if (index > equipamentos.length) {
      return null;
    }
    final Equipamento equipamento = equipamentos[index];
    return DataRow.byIndex(
        index: index,
        onLongPress: () {},
        selected: equipamento.selected,
        cells: [
          DataCell(Text('${equipamento.getId}')),
          DataCell(Text(equipamento.getDescricao)),
          DataCell(Text('R\$ ${equipamento.getPreco}')),
          DataCell(Text(
              '${equipamento.getDataCompra.day}/${equipamento.getDataCompra.month}/${equipamento.getDataCompra.year}')),
          DataCell(
              (equipamento.getAtivo) ? const Text('SIM') : const Text('NÃO')),
        ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => equipamentos.length;

  @override
  int get selectedRowCount => _selectedRowCount;
}

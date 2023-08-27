import 'package:esync_controledeestoque/data/models/comprador.dart';
import 'package:flutter/material.dart';

class CompradorDataTableSource extends DataTableSource {
  final List<Comprador> compradores;
  final int _selectRowCount = 0;

  CompradorDataTableSource(this.compradores);

  @override
  DataRow? getRow(int index) {
    if (index > compradores.length) {
      return null;
    }
    final Comprador comprador = compradores[index];
    return DataRow.byIndex(
        index: index,
        onLongPress: () {},
        selected: comprador.selected,
        cells: [
          DataCell(Text('${comprador.getId}')),
          DataCell(Text('${comprador.getNome} ${comprador.getSobrenome}')),
          DataCell(Text('${comprador.getCpf}')),
          DataCell(
            Text(
                '${comprador.getDataNascimento.day}/${comprador.getDataNascimento.month}/${comprador.getDataNascimento.year}'),
          ),
        ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => compradores.length;

  @override
  int get selectedRowCount => _selectRowCount;
}

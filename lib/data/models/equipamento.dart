class Equipamento {
  final int _id;
  final int _id_forecedor;
  final int _id_tipoEquipamento;
  final int _id_status;
  final String _descricao;
  final double _preco;
  final DateTime _dataCompra;
  final DateTime? _dataDescarte;
  final bool _ativo;

  Equipamento({
    required id,
    required id_forecedor,
    required id_tipoEquipamento,
    required id_status,
    required descricao,
    required preco,
    required dataCompra,
    dataDescarte,
    required ativo,
  })  : _id = id,
        _id_forecedor = id_forecedor,
        _id_tipoEquipamento = id_tipoEquipamento,
        _id_status = id_status,
        _descricao = descricao,
        _preco = preco,
        _dataCompra = dataCompra,
        _dataDescarte = dataDescarte,
        _ativo = ativo;

  int get getId => _id;
  int get getIdFornecedor => _id_forecedor;
  int get getIdtipoEquipamento => _id_tipoEquipamento;
  int get getIdStatus => _id_status;
  String get getDescricao => _descricao;
  double get getPreco => _preco;
  DateTime get getDataCompra => _dataCompra;
  DateTime? get getDataDescarte => _dataDescarte;
  bool get getAtivo => _ativo;
  bool get selected => false;
}

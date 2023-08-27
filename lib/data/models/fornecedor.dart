class Fornecedor {
  final int _id;
  final int _cnpj;
  final String _nomeFantasia;
  final String _razaoSocial;
  final DateTime _dataCadastro;

  Fornecedor(
      {required id,
      required cnpj,
      required nomeFantasia,
      required razaoSocial,
      required dataCadastro})
      : _id = id,
        _cnpj = cnpj,
        _nomeFantasia = nomeFantasia,
        _razaoSocial = razaoSocial,
        _dataCadastro = dataCadastro;

  int get getId => _id;
  int get getCnpj => _cnpj;
  String get getNomeFantasia => _nomeFantasia;
  String get getRazaoSocial => _razaoSocial;
  DateTime get getDataCadastro => _dataCadastro;

  get selected => false;
}

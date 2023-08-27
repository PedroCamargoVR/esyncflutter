class Comprador {
  final int _id;
  final String _nome;
  final String _sobrenome;
  final DateTime _dataDeNascimento;
  final BigInt _cpf;
  final BigInt _rg;

  Comprador(
      {required id,
      required nome,
      required sobrenome,
      required dataDeNascimento,
      required cpf,
      required rg})
      : _id = id,
        _nome = nome,
        _sobrenome = sobrenome,
        _dataDeNascimento = dataDeNascimento,
        _cpf = cpf,
        _rg = rg;

  int get getId => _id;
  String get getNome => _nome;
  String get getSobrenome => _sobrenome;
  DateTime get getDataNascimento => _dataDeNascimento;
  BigInt get getCpf => _cpf;
  BigInt get getRg => _rg;

  get selected => false;
}

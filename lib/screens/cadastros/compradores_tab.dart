import 'package:data_table_2/data_table_2.dart';
import 'package:esync_controledeestoque/data/models/comprador.dart';
import 'package:esync_controledeestoque/data/table_sources/comprador_data_table_source.dart';
import 'package:esync_controledeestoque/screens/cadastros/modal_screens/cadastro_comprador_modal.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CompradoresTab extends StatelessWidget {
  BuildContext contextHome;

  CompradoresTab(this.contextHome, {super.key});
  List<Comprador> compradores = [];

  //ATRIBUTOS USADOS NO CADASTRO
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //CONTROLLERS
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerSobrenome = TextEditingController();
  final TextEditingController _controllerCpf = TextEditingController();
  final TextEditingController _controllerRg = TextEditingController();
  final TextEditingController _controllerDataNascimento =
      TextEditingController();
  final TextEditingController _controllerUsuario = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Cadastro de Comprador"),
                      content: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: Form(
                          key: _formKey,
                          child: SingleChildScrollView(
                            child: CadastroCompradorPage(
                                _controllerNome,
                                _controllerSobrenome,
                                _controllerCpf,
                                _controllerRg,
                                _controllerDataNascimento,
                                _controllerUsuario,
                                _controllerSenha),
                          ),
                        ),
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Row(
                                children: [
                                  Icon(Icons.arrow_back),
                                  SizedBox(width: 10),
                                  Text("Voltar")
                                ],
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green[600],
                                  foregroundColor: Colors.white),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  print("O FORMULARIO FOI ENVIADO");
                                }
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.add_task),
                                  SizedBox(width: 10),
                                  Text("Salvar")
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
                child: const Text("+ Adicionar Comprador"),
              )
            ],
          ),
        ),
        Expanded(
          child: PaginatedDataTable2(
            columns: const [
              DataColumn2(label: Text("ID"), size: ColumnSize.S),
              DataColumn2(label: Text("Nome Completo"), size: ColumnSize.M),
              DataColumn2(label: Text("CPF"), size: ColumnSize.M),
              DataColumn2(label: Text("Data de Nascimento"), size: ColumnSize.M)
            ],
            source: CompradorDataTableSource(compradores),
          ),
        )
      ],
    );
  }
}

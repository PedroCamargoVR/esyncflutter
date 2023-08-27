import 'package:esync_controledeestoque/helpers/cpf_input_formatter.dart';
import 'package:esync_controledeestoque/helpers/update_cursor_position.dart';
import 'package:esync_controledeestoque/widgets/input_text.dart';
import 'package:esync_controledeestoque/widgets/line_separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CadastroCompradorPage extends StatefulWidget {
  //CONTROLLERS
  final TextEditingController _controllerNome;
  final TextEditingController _controllerSobrenome;
  final TextEditingController _controllerCpf;
  final TextEditingController _controllerRg;
  final TextEditingController _controllerDataNascimento;
  final TextEditingController _controllerUsuario;
  final TextEditingController _controllerSenha;
  const CadastroCompradorPage(
      this._controllerNome,
      this._controllerSobrenome,
      this._controllerCpf,
      this._controllerRg,
      this._controllerDataNascimento,
      this._controllerUsuario,
      this._controllerSenha,
      {super.key});

  @override
  State<CadastroCompradorPage> createState() => _CadastroCompradorPageState();
}

class _CadastroCompradorPageState extends State<CadastroCompradorPage> {
  void _updateCursorPositionCpf() {
    updateCursorPosition(widget._controllerCpf);
  }

  @override
  void initState() {
    super.initState();
    widget._controllerCpf.addListener(_updateCursorPositionCpf);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LineSeparator(),
        const Text("Dados Pessoais"),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputText(
                  controller: widget._controllerNome,
                  hintText: "Digite seu nome",
                  labelText: "Nome"),
              InputText(
                  controller: widget._controllerSobrenome,
                  hintText: "Digite seu sobrenome",
                  labelText: "Sobrenome"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputText(
                controller: widget._controllerCpf,
                hintText: 'XXX.XXX.XXX-XX',
                labelText: 'CPF',
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  CpfInputFormatter()
                ],
                maxLength: 14,
                inputType: TextInputType.number,
              ),
              InputText(
                  controller: widget._controllerRg,
                  hintText: "XX.XXX.XXX-X",
                  labelText: "RG"),
            ],
          ),
        ),
        InputText(
            controller: widget._controllerDataNascimento,
            hintText: "DD/MM/YYYY",
            labelText: "Data de Nascimento"),
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: LineSeparator(),
        ),
        const Text("Informações do Sistema"),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputText(
                  controller: widget._controllerUsuario,
                  hintText: "Digite um usuário",
                  labelText: "Usuário"),
              InputText(
                controller: widget._controllerSenha,
                hintText: "Digite uma senha única",
                labelText: "Senha",
                passwordText: true,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InputText(
                controller: TextEditingController(),
                hintText: "Digite a senha novamente",
                labelText: "Confirmar Senha",
                passwordText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Este campo é obrigatório";
                  } else if (value != widget._controllerSenha.text) {
                    return "As senhas devem ser iguais";
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

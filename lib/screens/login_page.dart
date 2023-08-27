import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, OutlineInputBorder> mapInputBorder = {
      "default": const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.black87, width: 2),
      ),
      "error": const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.red, width: 2),
      ),
      "disable": const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.grey, width: 2),
      ),
      "focused": const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.blueAccent, width: 2),
      ),
    };

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Column(
                children: [
                  Text("ESync",
                      style:
                          TextStyle(fontSize: 72, fontWeight: FontWeight.bold)),
                  Text("Controle de Estoque", style: TextStyle(fontSize: 44)),
                ],
              ),
            ),
            Form(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                        hintText: "Usuário",
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: mapInputBorder['focused'],
                        border: mapInputBorder['default'],
                        enabledBorder: mapInputBorder['default'],
                        errorBorder: mapInputBorder['error'],
                        focusedErrorBorder: mapInputBorder['error'],
                        disabledBorder: mapInputBorder['disable'],
                      ),
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.key,
                            size: 40,
                          ),
                        ),
                        hintText: "Senha",
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: mapInputBorder['focused'],
                        border: mapInputBorder['default'],
                        enabledBorder: mapInputBorder['default'],
                        errorBorder: mapInputBorder['error'],
                        focusedErrorBorder: mapInputBorder['error'],
                        disabledBorder: mapInputBorder['disable'],
                      ),
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.61, 70),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "ENTRAR",
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

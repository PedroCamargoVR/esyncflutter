import 'dart:io';

import 'package:esync_controledeestoque/screens/home_page.dart';
import 'package:esync_controledeestoque/screens/login_page.dart';
import 'package:esync_controledeestoque/themes/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('ESync - Controle de Estoque');
    setWindowMaxSize(const Size(1024, 768));
    setWindowMinSize(const Size(1024, 768));
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ESync',
      theme: mainTheme,
      initialRoute: "/home",
      routes: {
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
        //"/cadastrarcomprador": (context) => CadastroCompradorPage()
      },
    );
  }
}

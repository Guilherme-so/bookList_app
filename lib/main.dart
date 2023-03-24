import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lista_de_livros/pages/lista_de_livros.dart';

import 'pages/formulario_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de livros',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.kalamTextTheme(Theme.of(context).textTheme),
      ),
      routes: {
        '/': (context) => const ListaDeLivros(),
        '/form': (context) => const FormularioPage()
      },
    );
  }
}

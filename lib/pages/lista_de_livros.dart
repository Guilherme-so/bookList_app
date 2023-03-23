import 'package:flutter/material.dart';

class ListaDeLivros extends StatefulWidget {
  const ListaDeLivros({super.key});
  @override
  State<ListaDeLivros> createState() => _ListaDeLivrosState();
}

class _ListaDeLivrosState extends State<ListaDeLivros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text('This is Google Fonts'),
      ),
    );
  }
}

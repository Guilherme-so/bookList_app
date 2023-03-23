import 'package:flutter/material.dart';
import '../modals/livro_modal.dart';
import '../widgets/divided_line.dart';
import 'lista.dart';

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
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Lista de livros',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.blue,
                          ),
                        ),
                        FloatingActionButton.small(
                          onPressed: () {},
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  const DividedLine(),
                  ListaLivros(bookList: bookListFake),
                  const DividedLine(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: VerticalDivider(
                color: Colors.black38,
                thickness: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lista_de_livros/modals/livro_modal.dart';
import '../widgets/divided_line.dart';
import 'formulario_page.dart';
import 'lista.dart';

class ListaDeLivros extends StatefulWidget {
  const ListaDeLivros({super.key});
  @override
  State<ListaDeLivros> createState() => _ListaDeLivrosState();
}

class _ListaDeLivrosState extends State<ListaDeLivros> {
  final List<LivroModal> minhaLista = [];

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
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    FormularioPage(handleSubmit: (livro) {
                                  setState(() {
                                    minhaLista.add(livro);
                                  });
                                }),
                              ),
                            );
                          },
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  const DividedLine(),
                  ListaLivros(bookList: minhaLista),
                  if (minhaLista.isNotEmpty) const DividedLine(),
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

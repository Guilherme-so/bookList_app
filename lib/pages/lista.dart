import 'package:flutter/material.dart';
import 'package:lista_de_livros/modals/livro_modal.dart';

import 'formulario_page.dart';

// import '../modals/livro_modal.dart';
// import '../modals/livro_modal.dart';

class ListaLivros extends StatelessWidget {
  const ListaLivros(
      {required this.bookList,
      required this.handleSubmit,
      this.handleDelete,
      super.key});

  final Set<LivroModal> bookList;
  final Function(LivroModal) handleSubmit;
  final Function(LivroModal)? handleDelete;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, i) {
          final livro = bookList.elementAt(i);
          return Padding(
            padding: const EdgeInsets.only(left: 40),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FormularioPage(
                        livro: livro, handleSubmit: handleSubmit),
                  ),
                );
              },
              title: Text(
                livro.title,
                style: TextStyle(
                  fontSize: 24,
                  color: livro.lido ? Colors.grey : Colors.black,
                  decoration: livro.lido ? TextDecoration.lineThrough : null,
                ),
              ),
              subtitle: Text(
                livro.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              trailing: GestureDetector(
                child: const Icon(Icons.delete),
                onTap: () {
                  handleDelete!(livro);
                },
              ),
            ),
          );
        },
        separatorBuilder: (context, i) => const Divider(
              color: Colors.black12,
              thickness: 1,
            ),
        itemCount: bookList.length);
  }
}

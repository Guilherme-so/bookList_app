import 'package:flutter/material.dart';

// import '../modals/livro_modal.dart';
// import '../modals/livro_modal.dart';

class ListaLivros extends StatelessWidget {
  const ListaLivros({required this.bookList, super.key});

  final List bookList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, i) {
          final livro = bookList[i];
          return Padding(
            padding: const EdgeInsets.only(left: 40),
            child: ListTile(
              title: Text(
                livro.title,
                style: TextStyle(
                    fontSize: 24,
                    color: livro.lido ? Colors.grey : Colors.black,
                    decoration: livro.lido ? TextDecoration.lineThrough : null),
              ),
              subtitle: Text(
                livro.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
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

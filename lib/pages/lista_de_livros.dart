import 'package:flutter/material.dart';

import '../widgets/divided_line.dart';

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
                  ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, i) => const Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: ListTile(
                              title: Text("Livro qualquer"),
                              subtitle: Text(
                                'about some books',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                      separatorBuilder: (context, i) => const Divider(
                            color: Colors.black12,
                            thickness: 1,
                          ),
                      itemCount: 5),
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

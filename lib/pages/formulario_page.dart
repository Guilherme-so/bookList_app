import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lista_de_livros/modals/livro_modal.dart';

class FormularioPage extends StatefulWidget {
  const FormularioPage({this.handleSubmit, this.livro, super.key});

  final Function(LivroModal)? handleSubmit;
  final LivroModal? livro;

  @override
  State<FormularioPage> createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late LivroModal livro;

  @override
  void initState() {
    livro = widget.livro ?? LivroModal(id: Random().nextInt(999));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'Inclua seu livro',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 26,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      hintText: 'Title',
                      hintStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    initialValue: livro.title,
                    onSaved: (title) => livro.title = title!,
                    validator: (title) => title == null || title.isEmpty
                        ? "Preecha um titulo valido."
                        : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      hintText: 'Description',
                      hintStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    initialValue: livro.description,
                    onSaved: (descricao) => livro.description = descricao!,
                    validator: (descricao) =>
                        descricao == null || descricao.isEmpty
                            ? "Preencha uma descrição valida."
                            : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(children: [
                    const Text(
                      "Livro ja lido",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    Checkbox(
                        value: livro.lido,
                        onChanged: (value) {
                          setState(() {
                            livro.lido = value!;
                          });
                        })
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.blueAccent),
                    ),
                    child: const Text(
                      'Cadastrar',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      final form = _formKey.currentState!;

                      if (form.validate()) {
                        form.save();
                        widget.handleSubmit!(livro);
                        Navigator.of(context).pop();
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

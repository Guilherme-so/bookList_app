class LivroModal {
  LivroModal({this.title, this.description, this.lido});

  String? title = 'No title';
  String? description = 'No book description';
  bool? lido = false;
}

List bookListFake = [
  LivroModal(
      title: "A arte da guerre",
      description: 'random description',
      lido: false),
  LivroModal(
      title: "A sutil arte de liga o fodase",
      description: 'other random descriptiono',
      lido: true),
  LivroModal(
      title: "clean code",
      description: 'another random description',
      lido: false),
];

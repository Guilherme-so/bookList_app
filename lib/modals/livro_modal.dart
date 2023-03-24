class LivroModal {
  LivroModal({this.title = '', this.description = '', this.lido = false});

  String title;
  String description;
  bool lido;

  @override
  String toString() {
    return 'tile: $title, desciption: $description, lido: $lido';
  }
}

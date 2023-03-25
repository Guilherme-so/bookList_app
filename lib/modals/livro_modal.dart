class LivroModal {
  LivroModal(
      {this.id = 0, this.title = '', this.description = '', this.lido = false});

  int id;
  String title;
  String description;
  bool lido;

  @override
  bool operator ==(o) => o is LivroModal && id == o.id;

  @override
  int get hashCode => id;

  @override
  String toString() {
    return 'tile: $title, desciption: $description, lido: $lido';
  }
}

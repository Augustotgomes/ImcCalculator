class NomeInvalidoException implements Exception {
  String error() => "Nome inválido, digite o nome novamente";

  @override
  String toString() {
    return "NomeInvalidoException: ${error()}";
  }
}
class Aluno {
  String _nome = "";
  final List<double> _notas = [];

  // Aluno(String nome) {
  //   _nome = nome;
  // } ao invés de fazer isso, podemos substituir por:
  Aluno(this._nome); //o this._nome é o mesmo que o _nome = nome;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  List<double> getNotas() {
    return _notas;
  }

  void adicionarNota(double nota) {
    _notas.add(nota);
  }

  double retornaMedia() {
    //poderiamos fazer assim:
    var totalNotas = _notas.reduce((valoracumulado, elementolista) => valoracumulado + elementolista);
    //o método reduce é utilizado para reduzir uma lista a um único valor, aplicando uma função acumuladora a cada elemento da lista
    // ao invés de assim var totalNotas = 0.0;
    // for (var nota in _notas) {
    //   totalNotas += nota;
    // }
    var media = totalNotas / _notas.length;
    return media.isNaN ? 0 : media; //se a média for NaN, retorna 0
  }

  bool aprovado(double notaCorte) {
    return retornaMedia() >= notaCorte ? true : false;
  }
}

class NomeInvalidoException implements Exception {
 
 String error() => "Nome inválido!";
 //o método error() retorna uma string com a mensagem de erro

@override
 String toString() => "NomeInvalidoException: ${error()}";

 //pq quando não tem o @override fica instance of n sei oq?

}
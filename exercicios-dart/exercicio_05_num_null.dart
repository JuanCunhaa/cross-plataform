void main() {
  // num aceita int e depois double
  num registro = 10;
  print('Registro (inteiro): $registro');

  registro = 10.5;
  print('Registro (decimal): $registro');

  // Null safety
  String? telefone; // inicia como null
  String? observacoes = 'Paciente retorna para avaliação';

  print('Telefone: ${telefone ?? 'não informado'}');

  if (observacoes != null) {
    print('Tamanho das observações: ${observacoes.length}');
  }
}

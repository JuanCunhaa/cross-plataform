void main() {
  List<String> status = ['agendada', 'confirmada', 'cancelada'];
  List<double> valores = [150.0, 280.0, 350.0, 500.0];

  // Percorre status
  for (final item in status) {
    print('Status disponível: $item');
  }

  // Adiciona novo preço
  valores.add(220.0);
  print('Valores após add: $valores');

  // Filtra valores >= 300
  List<double> caras = valores.where((v) => v >= 300).toList();
  print('Valores >= 300: $caras');

  // Quantidade total de preços
  print('Quantidade total de preços: ${valores.length}');
}

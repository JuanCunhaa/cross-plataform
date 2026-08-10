void main() {
  double consulta1 = 180.0;
  double consulta2 = 350.5;
  double consulta3 = 500.0;

  // Soma total
  double somaTotal = consulta1 + consulta2 + consulta3;
  print('Soma total: R\$ ${somaTotal.toStringAsFixed(2)}');

  // Média
  double media = somaTotal / 3;
  print('Média: R\$ ${media.toStringAsFixed(2)}');

  // Consulta mais cara com 10% de desconto
  double maisCara = consulta1;
  if (consulta2 > maisCara) maisCara = consulta2;
  if (consulta3 > maisCara) maisCara = consulta3;

  double valorComDesconto = maisCara * 0.90;
  print(
    'Consulta mais cara com 10% de desconto: R\$ ${valorComDesconto.toStringAsFixed(2)}',
  );

  // Valores formatados
  print('Consulta 1: R\$ ${consulta1.toStringAsFixed(2)}');
  print('Consulta 2: R\$ ${consulta2.toStringAsFixed(2)}');
  print('Consulta 3: R\$ ${consulta3.toStringAsFixed(2)}');
}

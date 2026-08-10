void main() {
  Set<String> especialidades = {
    'Cardiologia',
    'Pediatria',
    'Dermatologia',
  };

  // Tentativa de duplicar Cardiologia (Set não guarda duplicados)
  especialidades.add('Cardiologia');
  especialidades.add('Ortopedia');

  print('Conjunto final: $especialidades');
  print('Contém Pediatria? ${especialidades.contains('Pediatria')}');
  print('Quantidade de especialidades únicas: ${especialidades.length}');
}

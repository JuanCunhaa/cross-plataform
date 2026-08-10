void main() {
  // Dados textuais do domínio de consultas
  String nomePaciente = 'Ana Souza';
  String nomeMedico = 'Dr. Roberto Silva';
  String especialidade = 'Cardiologia';
  String emailPaciente = 'ana.souza@email.com';

  // Ficha completa com interpolação
  print('===== FICHA DO PACIENTE =====');
  print('Paciente: $nomePaciente');
  print('Médico: $nomeMedico');
  print('Especialidade: $especialidade');
  print('E-mail: $emailPaciente');

  // Nome em maiúsculas
  print('Paciente (maiúsculas): ${nomePaciente.toUpperCase()}');

  // Quantidade de caracteres do e-mail
  print('Quantidade de caracteres do e-mail: ${emailPaciente.length}');

  // Verifica se o e-mail contém @
  print('E-mail contém @? ${emailPaciente.contains('@')}');
}

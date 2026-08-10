void main() {
  int idPaciente = 1;
  int idMedico = 10;
  int idConsulta = 100;
  int idadePaciente = 65;
  int quantidadeConsultasMes = 4;

  // Soma dos IDs
  int somaIds = idPaciente + idMedico;
  print('Soma idPaciente + idMedico: $somaIds');

  // Próximo ID de consulta
  int proximoIdConsulta = idConsulta + 1;
  print('Próximo ID de consulta: $proximoIdConsulta');

  // Prioridade por idade
  if (idadePaciente >= 60) {
    print('Paciente prioritário');
  } else {
    print('Paciente comum');
  }

  // Dobro da quantidade de consultas no mês
  print('Dobro de quantidadeConsultasMes: ${quantidadeConsultasMes * 2}');
}

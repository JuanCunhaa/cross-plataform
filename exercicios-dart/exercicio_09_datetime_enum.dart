enum StatusConsulta { agendada, confirmada, cancelada }

void main() {
  DateTime dataConsulta = DateTime(2026, 8, 10);
  StatusConsulta status = StatusConsulta.agendada;

  // Record nomeado
  ({String paciente, String medico, double valor}) resumo = (
    paciente: 'Ana Souza',
    medico: 'Dra. Marina Costa',
    valor: 280.0,
  );

  print('Data: ${dataConsulta.day}/${dataConsulta.month}/${dataConsulta.year}');
  print('Status atual: ${status.name}');
  print(
    'Record => paciente: ${resumo.paciente}, médico: ${resumo.medico}, valor: ${resumo.valor}',
  );

  // Confirma a consulta
  status = StatusConsulta.confirmada;
  print('Novo status: ${status.name}');

  // Data de retorno (+7 dias)
  DateTime retorno = dataConsulta.add(Duration(days: 7));
  print('Retorno: ${retorno.day}/${retorno.month}/${retorno.year}');
}

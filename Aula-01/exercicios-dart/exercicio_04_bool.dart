void main() {
  bool medicoAtivo = true;
  bool consultaAgendada = true;
  bool pacienteTemTelefone = false;
  bool pagamentoConfirmado = true;

  print('medicoAtivo: $medicoAtivo');
  print('consultaAgendada: $consultaAgendada');
  print('pacienteTemTelefone: $pacienteTemTelefone');
  print('pagamentoConfirmado: $pagamentoConfirmado');

  // Só confirma se médico ativo E consulta agendada
  if (medicoAtivo && consultaAgendada) {
    print('Consulta pode ser confirmada.');
  } else {
    print('Consulta não pode ser confirmada.');
  }

  // Aviso se faltar telefone
  if (!pacienteTemTelefone) {
    print('Aviso: contato do paciente faltante.');
  }

  // Liberação por pagamento
  if (pagamentoConfirmado) {
    print('Liberado para atendimento');
  }
}

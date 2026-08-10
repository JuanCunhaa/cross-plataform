enum StatusConsulta { agendada, confirmada, cancelada }

class Paciente {
  int id;
  String nome;
  String cpf;
  String email;
  String? telefone; // campo opcional (null safety)

  Paciente({
    required this.id,
    required this.nome,
    required this.cpf,
    required this.email,
    this.telefone,
  });
}

class Consulta {
  int id;
  String nomeMedico;
  Paciente paciente;
  double valor;
  StatusConsulta status;
  DateTime data;

  Consulta({
    required this.id,
    required this.nomeMedico,
    required this.paciente,
    required this.valor,
    required this.status,
    required this.data,
  });

  void confirmar() {
    if (status == StatusConsulta.agendada) {
      status = StatusConsulta.confirmada;
    }
  }

  void cancelar() {
    if (status != StatusConsulta.cancelada) {
      status = StatusConsulta.cancelada;
    }
  }

  String resumo() {
    return 'Consulta #$id | ${paciente.nome} com $nomeMedico | '
        '${status.name} | R\$ ${valor.toStringAsFixed(2)} | '
        '${data.day}/${data.month}/${data.year}';
  }
}

void main() {
  // String / bool / num
  String clinica = 'Clínica Heart Care';
  bool sistemaAtivo = true;
  num registroSistema = 2026;

  // Pacientes
  final paciente1 = Paciente(
    id: 1,
    nome: 'Carlos Andrade',
    cpf: '123.456.789-00',
    email: 'carlos@email.com',
    telefone: null, // opcional ausente
  );

  final paciente2 = Paciente(
    id: 2,
    nome: 'Ana Souza',
    cpf: '987.654.321-00',
    email: 'ana@email.com',
    telefone: '(11) 91234-5678',
  );

  // List de consultas (mínimo 2)
  List<Consulta> consultas = [
    Consulta(
      id: 1,
      nomeMedico: 'Dr. Roberto Silva',
      paciente: paciente1,
      valor: 350.0,
      status: StatusConsulta.agendada,
      data: DateTime(2026, 8, 10),
    ),
    Consulta(
      id: 2,
      nomeMedico: 'Dra. Marina Costa',
      paciente: paciente2,
      valor: 280.0,
      status: StatusConsulta.agendada,
      data: DateTime(2026, 8, 12),
    ),
  ];

  // Set de especialidades únicas
  Set<String> especialidades = {
    'Cardiologia',
    'Dermatologia',
    'Pediatria',
  };

  // Map com dados resumidos de um paciente
  Map<String, dynamic> pacienteResumo = {
    'id': paciente1.id,
    'nome': paciente1.nome,
    'email': paciente1.email,
    'telefone': paciente1.telefone,
  };

  // Record com resumo rápido
  ({String paciente, double valor}) resumoRapido = (
    paciente: consultas[0].paciente.nome,
    valor: consultas[0].valor,
  );

  print('======= RELATÓRIO FINAL =======');
  print('Clínica: $clinica | Sistema ativo: $sistemaAtivo | Registro: $registroSistema');
  print('Quantidade de consultas: ${consultas.length}');

  // Soma dos valores
  double somaValores = 0;
  for (final c in consultas) {
    somaValores += c.valor;
  }
  print('Soma dos valores: R\$ ${somaValores.toStringAsFixed(2)}');

  // Status de cada consulta
  for (final c in consultas) {
    print(c.resumo());
  }

  print('Especialidades únicas: $especialidades');
  print('Map paciente: $pacienteResumo');
  print('Telefone do paciente: ${pacienteResumo['telefone'] ?? 'não informado'}');
  print('Record rápido => ${resumoRapido.paciente} | R\$ ${resumoRapido.valor.toStringAsFixed(2)}');

  // Confirmar uma e cancelar outra
  consultas[0].confirmar();
  consultas[1].cancelar();

  print('------- Após alterações -------');
  for (final c in consultas) {
    print(c.resumo());
  }
}

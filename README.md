# Aula 03 — Abrindo o capô do Flutter

Leitura dirigida da base criada na Aula 02: como o app sobe, o que cada arquivo faz e a árvore de widgets da Home.

> Nesta aula **não** há ConsultaCard, `setState` nem botões de confirmar/cancelar. A base permanece igual para a próxima aula.

## O que estudar neste código

| Âncora | Arquivo | Lembrete |
|--------|---------|----------|
| Entrada | `lib/main.dart` | `main` + `runApp` |
| App | `MarcacaoConsultasApp` | `MaterialApp` configura, não desenha o título |
| Primeira tela | `home: const HomeScreen()` | equivalente ao `<Home />` |
| Esqueleto de tela | `Scaffold` | `body` + fundo |
| Árvore | `SafeArea → Center → Padding → Column` | layout por composição |
| Texto | `Text` + `TextStyle` | não há HTML |
| Identidade | `AppColors.primaria` | `#79059C` em ARGB |
| Domínio | `lib/src/models/` | tipos prontos para o card |

## Fluxo de subida

```
main() → runApp(MarcacaoConsultasApp)
      → MaterialApp(home: HomeScreen)
      → Scaffold → SafeArea → Center → Padding → Column → Text
```

## Responsabilidades

```
lib/
├── main.dart          → inicia e configura o app
└── src/
    ├── screens/       → telas (HomeScreen)
    ├── styles/        → identidade visual (AppColors)
    ├── models/        → domínio (Consulta, Medico, Paciente…)
    └── components/    → reservado (ConsultaCard na próxima aula)
```

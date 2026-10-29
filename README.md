# SoundBox

Projeto Flutter da Atividade 01 — Aplicação dos Conceitos da Interface.

A página principal apresenta playlists, artistas favoritos e músicas ouvidas recentemente. Nesta primeira etapa, os dados são exemplos fixos e o foco é a construção do layout. Ainda não há reprodução de áudio ou navegação entre telas.

## Estrutura

- `lib/main.dart`: inicia o aplicativo.
- `lib/Principal.dart`: configura o MaterialApp e a tela inicial.
- `lib/Playlist.dart`: monta a página principal com os conceitos dos exemplos da aula.

A interface utiliza Scaffold, AppBar, Container, Column, Row, Expanded, Text, CircleAvatar e SizedBox. SingleChildScrollView permite rolar a página e Wrap organiza os nomes dos artistas em telas menores.

## Executar no navegador

Com o Flutter instalado, abra a pasta do projeto:

```bash
flutter pub get
flutter run -d chrome
```

A estrutura web está incluída. Para gerar os arquivos de Android e iOS:

```bash
flutter create --project-name soundbox --platforms=android,ios .
```

## Verificar

```bash
flutter analyze
flutter test
flutter build web
```

O teste verifica o layout em três larguras de tela e a rolagem até o rodapé. O workflow do GitHub executa análise, testes e compilação web.

## Commit da atividade

Primeira Parte - Definindo Layout

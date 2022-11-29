# devagram

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Devagram

Projeto feito para aprofundar conhecimentos em Flutter, acompanhando curso do Devaria.
Nesse projeto será feito um app parecido com o instagram, o design será basedo em protótipo do Figma e teremos também integração com uma api.

### Arquitetura básica

**Constant**: Módulo responsável pelas classes constantes do projeto --> cores, endpoints
**Util**: Módulo responsável pelas classes de utilidades --> classes de responsividade, convesao de string
**Model**: Módulo responsável pelas classes que modelam as entidades do nosso projeto --> usuário, comentário
**Service**: Módulo responsável pelas conexões http com a API e regra de negócio do projeto --> rota de login
**View**: Módulo responsável pelas classes constantes do projeto --> tela de editar perfil
**Component**: Módulo responsável pela criação dos widgets personalizados do projeto --> botao, inputs

### Bibliotecas utilizadas

* flutter_dotenv - criar variaveis de ambiente
* http - fazer requisições http
* mask_text_input_formatter - criar mascaras para os inputs
* localstorage - salvar info internas do app

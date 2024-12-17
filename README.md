# Yandeh Challenge

Este repositório contém o projeto "Yandeh Challenge", desenvolvido com Flutter. Siga as instruções abaixo para clonar, instalar dependências e rodar o projeto na sua máquina.

## Requisitos

Antes de rodar o projeto, certifique-se de que você tem o Flutter instalado. Caso não tenha, siga as instruções para instalação no link abaixo:

- [Instalação do Flutter](https://flutter.dev/docs/get-started/install)

## Passos para Rodar o Projeto

### 1. Clonar o Repositório

Clone este repositório na sua máquina local:

```bash
git clone https://github.com/origemjhanpoll/yandeh_challenge.git

## Estrutura

```bash

lib/
├── app/
│   ├── shared/ # Biblioteca de componentes compartilhados
│   │   ├── atoms/
│   │   ├── molecules/
│   │   ├── organisms/
│   │   └── styles/ # Estilos globais, como temas, cores e tipografia
│   ├── routes/ # Configuração de rotas
│   ├── dependencies/ # Configuração de injeção de dependência
│   └── env/ # Configurações de ambiente
├── features/ # Funcionalidades do aplicativo
│   ├── home/ # Home
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   └── presentation/
│   ├── routes/ # Configuração de rotas
│   ├── dependencies/ # Configuração de injeção de dependência
│   └── env/ # Configurações de ambiente
├── main.dart
```

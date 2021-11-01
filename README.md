# README

Passos necessários para rodar o projeto localmente:

* Clonar o repositório
* Ir em /config/database.example.yml e mudar o nome para "database.yml" e preencher as informaçoes pedidas
* Executar o comando 'bundle install' para instalar as gems e dependencias
* Executar o comando 'rake db:setup' para criar o banco de dados e povoar com o usuario de teste
* Executar o comando 'rails server' para inicializar o servidor


Funcionalidades do App:
* Criação,edição e exclusão de Anotações.
* Todas as anotações ficam em ordem decrescente de criação(a ultima anotação criada fica em primeiro na fila).
* Função de busca por anotações (considerando o conteudo do titulo e da anotação).
* As anotações ficam destacadas por cor de acordo com sua prioridade.
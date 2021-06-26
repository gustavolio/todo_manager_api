# README

Descrição: API RESTFul em Ruby on Rails.

## Models:
    * User:
        * name;
        * email;
        * password;
        * password_confirmation;
    * Tasks:
        * title;
        * description;
        * status; #True = Executada
        * user; #Id do usuário que criou
        * visible; #True = todos os usuários tem acesso

## Testes:
    * Foram implementados testes unitários do controller e model de usuários e da autenticação;
    * Os testes do task controller e task model, em decorrência do tempo, não foram desenvolvidos;

## O arquivo endpoints.json contém uma coleção com as requisições de teste executadas no postman.

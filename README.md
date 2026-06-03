# Ecommerce com Oracle Apex
Criação de uma loja virtual com vários níveis de acesso, gráficos, tabelas de banco de dados, entre outros, utilizando Oracle Apex, e por dentro da plataforma, python, SQL, PL/SQL. Este foi um estudo em uma aplicação complexa para ter familiaridade com o sistema oracle, oracle developer e PL/SQL.

A loja virtual (ecommerce) é uma loja de café. Foi feito também um pouco de estilização para que ficasse visualmente bonita, além de completamente funcional.

<img width="725" height="540" alt="image" src="https://github.com/user-attachments/assets/b0eeba97-54f8-4a6f-a248-f877af9b3e44" />
<img width="1365" height="545" alt="image" src="https://github.com/user-attachments/assets/f3504214-46d5-4c9e-960c-002adf0ae0f3" />
<img width="1352" height="586" alt="image" src="https://github.com/user-attachments/assets/84471baf-efed-43fc-ae0f-b3e52ec845d7" />

## Páginas
Para a execução desse projeto, foram criadas várias páginas. Muitas de navegação do usuário, mas algumas para administradores do site/loja, como exemplos:
Página HOME, PRODUTOS, CATEGORIAS, CARRINHO, CHECK OUT, DETALHES DO PRODUTO -> acesso do usuário comum
Página INSERIR PRODUTO, GERENCIA ESTOQUE, ADMINISTRAÇÃO, RELATORIO DE ESTOQUE, GERENCIA PEDIDOS, RELATORIO DE PEDIDOS, RELATORIO DE VENDAS E FINANCEIRO -> acesso para determinados níveis de usuário e suas devidas permissões (staff da loja virtual, cada um no seu setor, tem sua permissão às páginas específicas)

<img width="725" height="540" alt="image" src="https://github.com/user-attachments/assets/b094c908-02d8-4b9f-8ba0-4818e692bffa" />

Foi utilizado também vários tipos de páginas diferentes como Classic Report, Interactiv report, interactiv grid, etc Na imagem abaixo podemos ver, por exemplo, dois exemplos de páginas, uma sobreposta a outra

<img width="1364" height="569" alt="image" src="https://github.com/user-attachments/assets/38c65e85-8374-4f35-a2c8-fffc5590b326" />
<img width="1350" height="588" alt="image" src="https://github.com/user-attachments/assets/6ac3032e-6a83-47c6-936c-314015f3d904" />
<img width="1349" height="591" alt="image" src="https://github.com/user-attachments/assets/a0ea0771-a534-48ad-911e-6a61b913708a" />


## Controle de Acesso
Em uma loja de verdade é preciso diferente níveis de acesso com diferentes permissões para manter o sistema confiável e garantindo que cada um só terá acesso e editará aquilo que é importante a sua função, sem gerar consequências para as outras pessoas. Um usuário comum, por exemplo, não pode ter o mesmo nível de acesso de um Administrador, que por sua vez, terá acesso diferente do que um Estoquista. Por isso, foi criado 7 níveis de acesso e permissões, ale´m da página chamada Access Control, que é de acesso do administrador e pode trocar as funções e acesso dos usuários a qualquer momento.

<img width="1322" height="554" alt="image" src="https://github.com/user-attachments/assets/fee322c1-c9c5-42d7-9362-0e5c73585e09" />

## Construção do Banco de Dados
Para conseguir que todas as funcionalidades fossem corretamente executadas, foi preciso arquitetar quais tabelas serias necessárias, suas chaves primarias, extrangeiras, triggers, etc, e dessa forma a construção e população das tabelas conseguiu servir ao proposto.
Abaixo é possivel ver alguams tabelas, views, packages e triggers criadas para este projeto

<img width="354" height="444" alt="image" src="https://github.com/user-attachments/assets/0fd5695c-5398-4dcf-ace7-ff021c01efe2" />

<img width="331" height="319" alt="image" src="https://github.com/user-attachments/assets/01e6cd04-e614-449e-8bdc-3fda667846c8" />

<img width="1339" height="450" alt="image" src="https://github.com/user-attachments/assets/d056799f-63f5-43bf-81d8-b445955c8de4" />

<img width="898" height="279" alt="image" src="https://github.com/user-attachments/assets/8104c8e1-69eb-4091-acad-8a35227c7e68" />

<img width="1194" height="463" alt="image" src="https://github.com/user-attachments/assets/e4fc572c-831f-4791-a0a4-b14316fdc31e" />


## Manipulação e Análise de Dados
Uma das tarefas para este projeto era, além de construir as tabelas do banco de dados, deixar o mais visual possível para todos os níveis de acesso quais as informações mais relevantes para cada um deles. Para um Estoquista, por exemplo, é de suma importância ter controle do estoque de todos os produtos e seguir uma régua do que é um estoque baixo, adequado e qual a rotatividade deste estoque, por isso, foi construída a visão com essa manipulação dos dados para que possa fazer a análise e tomada de decisões.

<img width="676" height="543" alt="image" src="https://github.com/user-attachments/assets/464cde84-df8a-41b5-bae0-f352fc7caf83" />
<img width="1345" height="594" alt="image" src="https://github.com/user-attachments/assets/1e97729c-d152-48ab-bb44-979025aa88e6" />


Para conseguir essas visões gráficas, foi feito views no banco de dados com os dados importantes, o que mobilizou muitos conhecimentos de SQl e tudo que envolve essas ações. O importante é que, partindo dos dados, consegui dar sentido a eles para cada um dos usuários através da manipulação contínua dos dados.

<img width="1308" height="512" alt="image" src="https://github.com/user-attachments/assets/7cdd13d5-c9a7-4b13-ab7c-1e3d0ab4fc2d" />
<img width="1352" height="560" alt="image" src="https://github.com/user-attachments/assets/1936dd48-f302-415c-bfdd-8b80ee18025b" />


## Mecanismo do carrinho de compras
De toda a aplicação a parte mais complexa foi acertar todas as questões envolvendo o carrinho de compras, o inicio é a janel de compra quando o usuário quer escolher o produto e a quantidade, logoa pós isso a aplicação deve somar e listar todos os produtos e valores do carrinho

<img width="1330" height="564" alt="image" src="https://github.com/user-attachments/assets/bdcf8e1d-e0e2-4ccc-9a88-3450ae7a8467" />

Além disso, existem as integrações com todos os outros relatórios, a quantidade que for comprada deve ser devidamente debitada do estoque e aparecer para o estoquista que aquele produto foi vendido e diminuiu seu estoque, por exemplo. Ademais, modos diferentes de pagamento entre outros detalhes que envolvem um carrinho de compras. Quando consegui acertar o ponto e tudo funcionou certinho, foi muito satisfatório superar esse desafio.


## Vídeo Explicativo
Publiquei um vídeo explicativo sobre este projeto na minha página do Linkedin, que pode ser acesso [CLICANDO NO LINK](https://www.linkedin.com/feed/update/urn:li:activity:7461494679562330112/)

Feature: Gestão de lista de compras
    Como um usuário com conta no sistema
    Desejo gerenciar uma lista de compras
    Para registrar os produtos que desejo comprar.

Background: Acesso e login na aplicacao
    Given acessei a pagina da aplicacao
Scenario: Registrar um novo usuário
    Given acesso a tela principal
    When informo os dados necessarios para registro de um usuario aleatorio
        | nome           | Juba Princesa  |
        | senha          | 123            |
        | confirmarSenha | 123            |
Scenario: So deve ser possivel possuir uma lista ativa por vez
    When realizo o cadastro de uma nova lista 
    Then salvo a lista criada
    Then não consigo visualizar mais de uma lista
    Then deslogo da plataforma
Scenario: As listas devem ser compostas por uma descrição e por uma lista de itens que identificam os produtos a serem comprados
    When realizo o cadastro de uma lista 
    And verifico se as listas sao compostas por uma descrição e por uma lista de itens
    Then deslogo da plataforma
Scenario: Os itens da lista possuem apenas nome e quantidade
    When realizo o cadastro de uma lista
    And verifico se os itens da lista possuem apenas nome e quantidade
    Then deslogo da plataforma
Scenario: Deve ser possível criar uma lista sem descrição, dado que pelo menos um item tenha sido adicionado
    When realizo o cadastro de uma nova lista sem descricao
    Then consegui criar uma nova lista
    Then deslogo da plataforma
Scenario: A quantidade mínima de um item na lista deve ser de 1 unidade
    When realizo o cadastro de uma nova lista incluindo um item com o valor menor que 1
    Then vejo a mensagem de erro insira um valor valido
    Then deslogo da plataforma
Scenario: A quantidade máxima de um item na lista deve ser de 1000 unidades
    When realizo o cadastro de uma nova lista incluindo um item com o valor maior que 1000
    Then vejo a mensagem de erro insira um valor valido
    Then deslogo da plataforma
Scenario: Se um item que já existe na lista sofrer uma nova tentativa de ser adicionado utilizando o mesmo nome, a quantidade do item deve ser acrescentada
    When realizo o cadastro de uma nova lista 
    And  cadastro um novo item na lista com o mesmo nome utilizado anteriormente
    Then a lista foi criada com sucesso
    Then deslogo da plataforma
Scenario: O usuário deve poder marcar um item como concluído
    When cadastro uma nova lista
    Then devo conseguir marcar um intem como concluido
    Then deslogo da plataforma


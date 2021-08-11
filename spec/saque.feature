Estória: Saque no Caixa Eletrônico

    Sendo um cliente que é correntista do Ninja Bank
    Posso sacar dinheiro
    Para que eu consiga comprar em lugares que não aceitam débito ou crédito. (mesmo estando no século 21 hahaha)


    Cenário: Saque em conta corrente
        Dado que eu tenho R$ 1000 em minha conta corrente
        Quando faço um saque de R$ 200
        Então meu saldo final deve ser R$ 800

Repare que no cenário anterior nós usamos o “Dado que” para indicar o cenário atual, o “quando” para indicar a ação do usuário, e o “Então” para indicar como o software vai reagir.

Podemos também usar o “E” e o “MAS” para criar cenários de teste ainda mais ricos. 

    Cenário: Deu ruim não tenho saldo
        Dado que eu tenho R$ 0 em minha conta corrente
        Quando faço um saque de R$ 100
        Então vejo a mensagem "Saldo insuficiente para saque :("
        E meu saldo final deve ser R$ 0

    Cenário: Tenho saldo mas não o suficiente
        Dado que eu tenho R$ 500 em minha conta corrente
        Quando faço um saque de R$ 501
        Então vejo a mensagem "Saldo insuficiente para saque :("
        E meu saldo final deve ser R$ 500

    Cenário: Limite por saque :(

        Dado que eu tenho R$ 1000 em minha conta corrente
        Quando faço um saque de R$ 701
        Então vejo a mensagem "Limite máximo por saque é de R$ 700"
        E meu saldo final deve ser R$ 1000

Importante: Você não precisa escrever os critérios de aceitação exatamente desta forma. Mas e interessante que você registre de alguma forma os testes que devem ser realizados para que a user 
story possa ser bem testada.

Nós da QA Ninja gostamos muito de usar o “Dado que”, “quando”, “então”, mas fica a seu critério.
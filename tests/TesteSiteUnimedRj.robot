*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir o navegador
Test Teardown   Fechar navegador


*** Test Case ***
Caso de Teste 01 - Validar apresentação de resultados com a Especilidade e resultado
    Dado que eu estou logado no site Unimed
    Quando eu acessar o guia médico
    E pesquisar pela especialidade "Pediatra" para o estado "Rio de Janeiro" e cidade "Rio de Janeiro"
    E selecionar a opção "UNIMED RIO"
    E confirmar a pesquisa
    Então sistema deve apresentar os resultados corretamente

 

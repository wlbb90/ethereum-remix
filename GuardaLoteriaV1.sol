pragma solidity ^0.4.0; /* nesta linha temos uma descrição que basicamente diz que  linguagem que está sendo
 utilizada (solidity) e fixa a versão que vai compilar este contrato (0.7.0) e transformar no bytecode*/

 /* Fixar a versão serve para garantir que mesmo que o solidity receba um upgrade ou alguma mudança, o contrato
 vai conseguir continuar a compilar, pois a versão de compilação está fixada*/

//Esse contrato inteligente tem a função de guardar na blockchain um número da loteria federal
contract GuardaLoteria { //nesta linha é definido o contrato e o nome do mesmo
    uint numeroSorteado; //aqui é definido o tipo do que vai ser guardado e o nome de variável (uint == inteiro sem sinal)

    function set(uint enviado) public { // aqui temos um função que pega o númeo enviado e guarda na variável de estado global (numerosorteado)
        numeroSorteado = enviado;
    }
    
    function get() public view returns (uint) {// aqui temos uma função que vai pegar e retornar o que está guardado na variável de estado global (numerosorteado)
        return numeroSorteado;
    }
}
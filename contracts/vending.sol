// SPDX-License-Identifier: None
pragma solidity ^0.8.9;

contract VendingMachine {
    // Variabili
    address public owner;
    uint public cupcakePrice;
    uint public cupcakesLeft;

    // Costrutture: imposta il proprietario del contratto
    //              e aggiunge 100 cupcake
    constructor() {
        owner = msg.sender;

        cupcakesLeft = 100;
        cupcakePrice = 0.01 ether;
    }

    // Permette al proprietario di aggiungere altri cupcake
    function refill(uint amount) public {
        require(msg.sender == owner, "Non sei il proprietario");
        cupcakesLeft += amount;
    }

    // Permette al proprietario di cambiare il prezzo di un cupcake
    function changePrice(uint newPrice) external {
        require(msg.sender == owner, "Non sei il proprietario");
        cupcakePrice = newPrice;
    }

    // Permette a chiunque di acquistare un cupcake
    function purchase(uint amount) public payable {
        require(msg.value >= amount * cupcakePrice, "Importo errato.");
        require(cupcakesLeft >= amount, "Non ci sono abbastanza cupcake");

        cupcakesLeft -= amount;
    }
}

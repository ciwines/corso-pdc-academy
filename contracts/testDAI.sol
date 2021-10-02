// SPDX-License-Identifier: None
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestDAI is ERC20 {
    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor() ERC20("Test DAI", "TDAI") {
        uint initialSupply = 1000000 ether; // 1 milione
        
        _mint(msg.sender, initialSupply);
    }
}
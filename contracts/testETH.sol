// SPDX-License-Identifier: None
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestETH is ERC20 {
    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor() ERC20("Test Ether", "TETH") {
        uint initialSupply = 100000 ether; // 100'000 
        
        _mint(msg.sender, initialSupply);
    }
}
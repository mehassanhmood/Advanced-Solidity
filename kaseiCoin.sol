// declaring language and version :
pragma solidity ^0.5.0;
// importing the required libraries:
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";
// making the contract class :
contract KaseiCoin is ERC20, ERC20Detailed, ERC20Mintable {
    // constructor which requires 3 things, name,symbol and supply of token.
    constructor(
        string memory name,
        string memory symbol,
        uint initial_supply
    )
    ERC20Detailed(name,symbol,18) public{}
}
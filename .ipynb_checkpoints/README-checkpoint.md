# Advanced-Solidity
## Martian Token Crowdsale
The purpose of this project was to come up with a token that would form the basis of moentary system on Kasei, meaning Mars.
This was done by utlizing the idea of web 3 and through following steps:
  1. Creating the KaseiCoin Token Contract , which will specify the follwing attributes :
     1. Name of Token.
     2. Symbol.
     3. The initial supply of it.
  2. Creating the KaseiCoin Crowdsale Contract, for the following reasons :
     1. To give it a rate against ether.
     2. this contract will have a payable address of the wallet.
     3. The token itself.
  3. Creating the KaseiCoin Crowdsale Deployer Contract:
     1. This contract will deal with minitng of the token.
     2. Addresses that will contain the token address and crowdsale address once it has been deployed.
     3. Adding a constructor and inside of its body the following things:
        1. New instance of Kasei Token contract.
        2. assigning the address of kasei token contract to the kasie token address variable
   4. A new instance of Kasei crowdsale address that will have the following parameters:
      1. rate 
      2. wallet
      3. token
      4. Assigning the Kasei Crowdsale contract to the Kasei Crowdsale address variable
   5. Setting the Kasei Coin Crwosale as a minter.
   6. Renouncing the minter role of Kasei Coin Crowdsale Deployer
   7. Compiling and deploying the contract.
   8. Following image shows the deployed contract:
        ![Deployed Contract](Crowdsale.jpg)

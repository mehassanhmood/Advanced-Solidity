// declaring language and version:
pragma solidity ^0.5.0;
// importing libraries and dependencies:
import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
// declaring the contract class as crowdsale and Minted crowdsale:
contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale{
    constructor(
        uint rate,
        address payable wallet,
        KaseiCoin token
    )
    Crowdsale(rate,wallet,token)public{}
}
// contract class that deploys thge crowdsale:
contract KaseiCoinCrowdsaleDeployer {
    address public token_address;
    address public crowdsale_address;
    constructor(
        string memory name,
        string memory symbol,
        address payable wallet
    )public{
        KaseiCoin token = new KaseiCoin(name,symbol,0);
        token_address =address(token);

        KaseiCoinCrowdsale kasei_crowdsale = new KaseiCoinCrowdsale(1,wallet,token);
        crowdsale_address =address(kasei_crowdsale);

        token.addMinter(crowdsale_address);
        token.renounceMinter();
    }
}
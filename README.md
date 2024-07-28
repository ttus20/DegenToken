# Building on Avalanche

In Remix Ethereum IDE, to create an ERC20 token that will be deploy on Avalanche network for Degen Gaming. In this ERC20 it will have the functionality of minting tokens, transferring them, burning them, and redeeming. The ERC20 that was created uses unique store items and the amounts from the store that is called "ShopWise."

## Description

A renowned game studio, Degen Gaming, has approached to create a unique token that can reward players and take their game to the next level. Tasked with creating a token that can be earned by players in their game and then exchanged for rewards in their in-game store. Degen Gaming has selected the Avalanche blockchain, a leading blockchain platform for web3 gaming projects, to create a fast and low-fee token. With these tokens, players can not only purchase items in the store, but also trade them with other players, providing endless possibilities for growth

## Getting Started
* First Setup the MetaMask that was created
* Connect your account to faucet.avax.network
* Then connect it again at faucets.chain.link/fuji
* Run the account at testnet.snowtrace.io

* With the given Template, fork the repository to your own github desktop
* Open it on VScode and run this at a command prompt
      + npm install -g @remix-project/remixd
      + remixd

* Go to Remix Ethereum
* Connect the remix workspace into the localhost
* It will automatically setup all the codes from the github repository
* Make sure to have this at the beginning 

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
```

* Since this ERC20 uses OpenZeppelin this will require a specific code import

```
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "hardhat/console.sol";
```

### Executing program

* Run the given codes on the Remix IDE
* Compile the codes (.sol) on Remix Ethereum IDE
* After compiling in solidity compiler, go to deploy and run transaction
* Deploy the contract, the functions are already included when deploying
* Copy the link address and apply to the corresponding field

## Help

You can follow this for a startup! [https://www.youtube.com/watch?v=BlRfDZos_hI&t=1s]

## Authors

Ghasutt Joshua   
https://github.com/ttus20


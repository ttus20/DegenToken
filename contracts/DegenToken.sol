// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    struct ShopWise {
        uint reqCoins;
        string brandName;
        bool Redeemable;
    }

    ShopWise[] private storeItems;

    constructor()
    ERC20("Degen", "DGN")
    Ownable()
    {
        storeItems.push(ShopWise(90, "DotDot NFT Shop Shop", false));
        storeItems.push(ShopWise(45, "NetForTell", false));
        storeItems.push(ShopWise(12, "NetForStore", false));
        storeItems.push(ShopWise(27, "NFT Drifty", false));
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount); 
    }

    function decimals() override public pure returns (uint8) {
        return 0;
    }

    function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }

    function transferTokens(address _receiver, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "DGN coins are not enough! The transfer cannot be covered!");
        approve(msg.sender, _value);
        transferFrom(msg.sender, _receiver, _value);
    }

    function burnTokens(uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "DGN coins are not enough! The requested amount cannot cover the burn!");
        burn(_value);
    }

    function redeemTokens(uint8 input) external payable returns (string memory) {
    
    require(input < 4, "Invalid Input");
    
    
    require(!storeItems[input].Redeemable, "Item Already Redeemed!");
    
    
    require(balanceOf(msg.sender) >= storeItems[input].reqCoins, "DGN coins are not enough to redeem!");

    
    approve(msg.sender, storeItems[input].reqCoins);
    transferFrom(msg.sender, owner(), storeItems[input].reqCoins);
    
    
    storeItems[input].Redeemable = true;

    
    return string.concat(storeItems[input].brandName, " has been saved!");
}


    function showStoreItems() public view returns (string memory) {
        string memory itemPrintStr = "";

        for (uint i = 0; i < 4; i++) {
            itemPrintStr = string.concat(itemPrintStr, "   ", Strings.toString(i), ". ", storeItems[i].brandName);
        }

        return itemPrintStr;
    }
}
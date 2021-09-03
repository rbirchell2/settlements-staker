//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "./ERC20Mintable.sol";

contract Staker is Ownable {
    bool public isUpgradable = false;

    constructor(
        address settlementsContract,
        ERC20Mintable ironTokenContract,
        ERC20Mintable goldTokenContract,
        ERC20Mintable silverTokenContract
    ) {}

    function stake(uint256 tokenId) public {
        // Send token to contract
        // map(token -> owner)
    }

    function harvest(uint256 tokenId) public {
        // mint((blockNumber - lastClaim) * settlementSize, msg.sender)
    }

    function withdraw(uint256 tokenId) public {
        // Send token back to owner
    }

    function switchOffUpgradability() public onlyOwner {
        isUpgradable = false;
    }

    function changeMinterForContract(
        address newMinter,
        ERC20Mintable targetToken
    ) public onlyOwner {
        targetToken.transferOwnership(newMinter);
    }
}

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.3;

contract owned {
    address owner;
    
    constructor() {
        owner = payable(msg.sender);
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not allowed");
        _;
    }
}
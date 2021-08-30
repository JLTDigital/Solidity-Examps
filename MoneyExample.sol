// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.3;

contract SendMoneyExample {
    
    uint public balancedReceived;
    
    function receiveMoney() public payable {
        balancedReceived += msg.value;
    }
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function withdrawMoney() public view {
        payable(msg.sender);
        
    }
    
    function withdrawMoneyTo(address payable _to) public {
        _to.transfer(this.getBalance());
    }
}
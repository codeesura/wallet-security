pragma solidity ^0.8.0;

contract OnlyOwnerWithdrawal {
    address payable public owner;
    
    constructor() {
        owner = payable(msg.sender);
    }
    
    function withdraw() external {
        require(msg.sender == 0x123, "Only the specified address can withdraw funds.");
        uint256 balance = address(this).balance;
        owner.transfer(balance);
    }
    
    receive() external payable {}
}

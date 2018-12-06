pragma solidity ^0.4.25;

contract Ownable {
    
    // define a varibale to store contract deployer
    address public owner;
    
    // initialize contract to reach contract deployer address
    constructor() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
}
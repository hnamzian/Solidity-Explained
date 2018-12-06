pragma solidity ^0.4.25;

import "./Ownable.sol";

contract Demo is Ownable {
    
    struct Profile {
        bool checked;
        uint8 age;
        int256 income;
        string name;
    }
    
    // mapping
    mapping (address => Profile) public users;
    address[] public userAddress;
    
    // event
    event UserAdded(address _addr, string name);
    
    function setUser(string _name, int256 _income, bool _checked) public {
        Profile storage user = users[msg.sender];
        user.name = _name;
        user.income = _income;
        user.checked = _checked;
        userAddress.push(msg.sender);
        emit UserAdded(msg.sender, _name);
    }
    
}
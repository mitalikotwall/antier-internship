
pragma solidity ^0.8.22;

contract array {
    struct account{
        string name;
        int amount;
    
    }

    mapping(string  => int) public map;

    function store(string memory name, int amount ) public{
        map[name]=amount;
    }

account[] public accountsarray;

function storeinarray(string memory name, int amount)public{
    account memory newaccount = account(name,amount);
    accountsarray.push(newaccount);
}

}


  
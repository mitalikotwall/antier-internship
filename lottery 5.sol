// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressToTicket {
    mapping(address => uint) public addressToTicket;

    function storeTicket(address _addr, uint _ticket) public {
        addressToTicket[_addr] = _ticket;
    }

    function getTicket(address _addr) public view returns (uint) {
        return addressToTicket[_addr];
    }
}
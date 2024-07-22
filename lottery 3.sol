// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TicketToAddress {
    mapping(uint => address) public ticketToAddress;

    function storeAddress(uint _ticket, address _addr) public {
        ticketToAddress[_ticket] = _addr;
    }

    function getAddress(uint _ticket) public view returns (address) {
        return ticketToAddress[_ticket];
    }
}
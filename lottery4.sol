// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressToTicket {
    mapping(address => uint) public addressToTicket;

    function storeTicket(address _addr, uint _ticket) internal {
        addressToTicket[_addr] = _ticket;
    }

    function getTicket(address _addr) public view returns (uint) {
        return addressToTicket[_addr];
    }
}

contract TicketToAddress {
    mapping(uint => address) public ticketToAddress;

    function storeAddress(uint _ticket, address _addr) internal {
        ticketToAddress[_ticket] = _addr;
    }

    function getAddress(uint _ticket) public view returns (address) {
        return ticketToAddress[_ticket];
    }
}

contract CombinedContract is AddressToTicket, TicketToAddress {
    function storeData(address _addr, uint _ticket) public {
        storeTicket(_addr, _ticket);
        storeAddress(_ticket, _addr);
    }

    function getTicketFromAddress(address _addr) public view returns (uint) {
        return getTicket(_addr);
    }

    function getAddressFromTicket(uint _ticket) public view returns (address) {
        return getAddress(_ticket);
    }
}
// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Lottery {
    address public owner;
    mapping(uint256 => address) public tickets;
    mapping(address => uint256) public userTickets;
    
    event TicketPurchased(address indexed buyer, uint256 ticketNumber);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {
        owner = msg.sender;
        emit OwnershipTransferred(address(0), owner);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner is the zero address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    function buyTicket(uint256 ticketNumber) public {
        require(userTickets[msg.sender] == 0, "You have already purchased a ticket.");
        require(tickets[ticketNumber] == address(0), "Ticket number already taken.");
        userTickets[msg.sender] = ticketNumber;
        tickets[ticketNumber] = msg.sender;

        emit TicketPurchased(msg.sender, ticketNumber);
    }
}
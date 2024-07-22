
// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Lottery {
    mapping(uint256 => address) public tickets;
    mapping(address => uint256) public userTickets;
    event TicketPurchased(address indexed buyer, uint256 ticketNumber);
    function buyTicket(uint256 ticketNumber) public {
        require(userTickets[msg.sender] == 0, "You have already purchased a ticket.");
        require(tickets[ticketNumber] == address(0), "Ticket number already taken.");
        userTickets[msg.sender] = ticketNumber;
        tickets[ticketNumber] = msg.sender;

        emit TicketPurchased(msg.sender, ticketNumber);
    }
}
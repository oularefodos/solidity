pragma solidity 0.8.7;

contract mycontra {
    uint    balance;
    address lastPerson;

    function getBalance() public view returns(uint) {
        return (balance);
    }

    function getLastperson() public view returns (address) {
        return (lastPerson);
    }

    receive() external payable {
        lastPerson = msg.sender;
        balance = balance + msg.value;
    }
}

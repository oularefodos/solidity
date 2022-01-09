pragma solidity 0.8.7;

contract miros {
    address monaddress;
    uint    balance;

    function getnomber() public view returns (uint) {
        return balance;
    }

    function setnomber() public view returns (address) {
        return (monaddress);
    }

    receive() external payable {
        monaddress = msg.sender;
        balance = balance + msg.value;
    }
}

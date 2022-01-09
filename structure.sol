pragma solidity 0.8.7;

contract structure {
    // declaration de la structure
    struct Bal {
        uint money;
        uint ntransfert;
    }

    //declaration de la cartographie
    mapping (address => Bal) balance;

    function getnomber() public view returns (uint) {
        return balance[msg.sender].money;
    }

    function getntransfer() public view returns (uint) {
        return balance[msg.sender].ntransfert;
    }

    receive () external payable {
        balance[msg.sender].money += msg.value;
        balance[msg.sender].ntransfert += 1;
    }
}

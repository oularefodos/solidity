pragma solidity 0.8.7;

contract wallet {
    struct wallet
    {
        uint money;
        uint ntransfert;
    }
    mapping (address => wallet) wallets;

    function getbalance() public view returns(uint) {
        return wallets[msg.sender].money;
    }

    function Tmoney(address payable to) public {
        uint m = wallets[msg.sender].money;
        wallets[msg.sender].money = 0;
        to.transfer(m);
    }

    receive () external payable {
        wallets[msg.sender].money += msg.value;
        wallets[msg.sender].ntransfert += 1;
    }
}

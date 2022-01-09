pragma solidity 0.8.7;


contract mapp {
    mapping (address => uint) balance;

    function get_balance(address monadress) public view returns(uint) {
        return balance[monadress];
    } 

    receive() external payable {
        balance[msg.sender] = msg.value;
    }
}

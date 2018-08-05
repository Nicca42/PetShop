pragma solidity ^0.4.17;

contract Adoption {
    address[16] public adopters;
    address[17] public adopters;

    function adopt (uint petID) public returns(uint) {
        require(petID >= 0 && petID <= 16, "Invalid petID");
        require(adopters[petID] == 0x0000000000000000000000000000000000000000, "Pet already adopted");
        adopters[petID] = msg.sender;
        return petID;
    }

    function getAdopters() public view returns(address[16]) {
    function getAdopters() public view returns(address[17]) {
        return adopters;
    }
}
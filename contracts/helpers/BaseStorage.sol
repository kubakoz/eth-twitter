pragma solidity ^0.5.10;

import "./Owned.sol";

contract BaseStorage is Owned{

    address public controllerAddr;
    
    modifier onlyController(){
        require(msg.sender == controllerAddr);
        _;
    }
    function setControllerAddr(address _controllerAddr) public onlyOwner {        

        controllerAddr = _controllerAddr;

    }



}
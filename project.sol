// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract {

    function testRequire(uint _eth) public pure {
        require(_eth > 10000, "eth must be greater than 10000");
    }

    function testRevert(uint _eth) public pure{
        if(_eth < 10000){
            revert("eth must be greater to less than 10000");
        }
    }

    uint number;
    function testAssert() public view{
        assert(number == 0);
    }
}

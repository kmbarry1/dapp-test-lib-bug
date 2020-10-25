pragma solidity ^0.6.7;

import "./ThingLib.sol";

contract Thing {
    function isAnswer(uint256 guess) external pure returns (bool) {
        uint256 answer;

        // comment this line out, and the test passes
        answer = ThingLib.getAnswer();

        return (guess == answer);
    }
}

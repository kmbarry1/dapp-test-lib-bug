pragma solidity ^0.6.7;

interface ThingLike {
    function isAnswer(uint256 n) external returns (bool);
}

interface ThingFactoryLike {
    function newThing() external returns (ThingLike);
}

contract LibBugRepro {
    ThingLike public thing;
    constructor(address thingFactory) public {
        thing = ThingFactoryLike(thingFactory).newThing();
    }
    function doThing(uint256 value) external {
        uint256 n = value % 100;
        require(thing.isAnswer(n), "wrong answer");
    }
}

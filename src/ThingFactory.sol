pragma solidity ^0.6.7;

import "./Thing.sol";

contract ThingFactory {
    function newThing() external returns (Thing) {
        return new Thing();
    }
}

pragma solidity ^0.6.7;

import "ds-test/test.sol";

import "./ThingFactory.sol";
import "./LibBugRepro.sol";

contract LibraryissueTest is DSTest {
    LibBugRepro lbp;

    function setUp() public {
        address thingFactory = address(new ThingFactory());
        lbp = new LibBugRepro(thingFactory);
    }

    function test_basic_sanity() public {
        lbp.thing();
    }
}

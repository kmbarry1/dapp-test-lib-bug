pragma solidity ^0.6.7;

import "ds-test/test.sol";

import "./LibBugRepro.sol";

contract LibraryissueTest is DSTest {
    LibBugRepro issue;

    function setUp() public {
        issue = new Libraryissue();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}

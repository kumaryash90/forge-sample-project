// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/StakeContract.sol";
import "./mocks/MockERC20.sol";
import "./utils/Cheats.sol";

contract StakeContractTest is Test {
    Cheats internal constant cheats = Cheats(HEVM_ADDRESS);
    StakeContract public sc;
    MockERC20 public merc;

    function setUp() public {
        sc = new StakeContract();
        merc = new MockERC20();
    }

    function testFailExample(uint256 amount) public {
        // uint256 amount = 10000e18;
        revert("random");
        merc.approve(address(sc), amount);
        cheats.roll(55);
        bool passed = sc.stake(amount, address(merc));
        assertTrue(passed);
    }
}

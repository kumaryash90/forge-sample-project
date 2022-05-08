// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

abstract contract Cheats {
    function warp(uint256 x) public virtual;

    function roll(uint256 x) public virtual;

    function store(
        address c,
        bytes32 loc,
        bytes32 val
    ) public virtual;

    function expectEmit(
        bool,
        bool,
        bool,
        bool
    ) external virtual;

    function expectRevert(bytes calldata msg) external virtual;
}
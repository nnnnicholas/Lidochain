// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Contract.sol";

contract TestContract is Test {
  Contract c;

  function setUp() public {
    vm.coinbase(address(0x388C818CA8B9251b393131C08a736A67ccB19297));
    c = new Contract(address(0x388C818CA8B9251b393131C08a736A67ccB19297));
  }

  function testBar() public {
    assertEq(uint256(1), uint256(1), "ok");
  }

  function testFoo(uint256 x) public {
    vm.assume(x < type(uint128).max);
    assertEq(x + x, x * 2);
  }
}

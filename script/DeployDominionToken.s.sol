//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/DominionToken.sol";

contract DeployDominionToken is Script {
    function run() external {
        vm.startBroadcast();
        new DominionToken(
            "Dominion Token",
            "DOM",
            1_000_000_000
        );
        vm.stopBroadcast();
    }
}
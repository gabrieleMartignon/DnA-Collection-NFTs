// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {NFT} from "../src/NFT.sol";

contract NFTScript is Script {
    NFT public nftContract;

    function run() public {
        vm.startBroadcast();

        nftContract = new NFT(
            "DnA collection",
            "DnA",
            0.001 ether,
            1000,
            0x9DdfaCa8183c41ad55329BdeeD9F6A8d53168B1B,
            98678817797101433201106421841384719352454981880361741050121669960401278877983
        );

        vm.stopBroadcast();
    }
}

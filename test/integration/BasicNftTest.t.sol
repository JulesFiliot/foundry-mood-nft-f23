// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployBasicNFT} from "../../script/DeployBasicNFT.s.sol";
import {BasicNFT} from "../../src/BasicNFT.sol";

contract BasicNftTest is Test {
    DeployBasicNFT public deployer;
    BasicNFT public basicNFT;
    address user = makeAddr("user");
    string constant userNFT =
        "ipfs://QmZtL3f4gsH43UQMtd6RZdDzJRGxBUydXQWF9t9Se2zJT4";

    function setUp() public {
        deployer = new DeployBasicNFT();
        basicNFT = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Dogie";
        string memory actualName = basicNFT.name();
        assert(
            keccak256(abi.encodePacked(expectedName)) ==
                keccak256(abi.encodePacked(actualName))
        );
    }

    function testCanMintAndHaveBalance() public {
        vm.prank(user);
        basicNFT.mintNFT(userNFT);

        assertEq(basicNFT.balanceOf(user), 1);
        assertEq(
            keccak256(abi.encodePacked(userNFT)),
            keccak256(abi.encodePacked(basicNFT.tokenURI(0)))
        );
    }
}

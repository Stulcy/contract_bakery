// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >=0.8.0;

import "forge-std/Test.sol";
import {TaxHavenToken} from "../src/TaxHavenToken.sol";
import {ERC20Token} from "../src/ERC20Token.sol";

contract TaxHavenTokenTest is Test {
    TaxHavenToken public taxHavenToken;
    ERC20Token public eRC20Token;

    function setUp() public {
        eRC20Token = new ERC20Token("Token", "TKN");
        taxHavenToken = new TaxHavenToken("thToken", "thTKN", eRC20Token);

        console2.logUint(taxHavenToken.totalSupply());
    }

    function test_Mint() public {
        eRC20Token.approve(address(taxHavenToken), 1 ether);
        taxHavenToken.mint(1 ether);
    }
}

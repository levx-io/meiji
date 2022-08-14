pragma solidity 0.8.15;

import "../lib/forge-std/src/Test.sol";
// End to End oSushi tests, seeing how they work against existing Sushi 
// Contracts and ensuring the system hums along

// Sushi V1 Contracts oSushi needs to interact with
//import { SushiToken } from "../src/SushiV1/SushiToken.sol";

// oSushi Contracts
import { GaugeController } from "../src/oSushi/GaugeController.sol";
import { LiquidityGauge } from "../src/oSushi/LiquidityGauge.sol";
import { Minter } from "../src/oSushi/Minter.sol";
import { VotingEscrow } from "../src/oSushi/VotingEscrow.sol";


contract oSushiTest is DSTest { 
    address constant SUSHI = address(0);

    GaugeController controller;
    LiquidityGauge gauge;
    Minter minter;
    VotingEscrow escrow;

    function setup() public {
        escrow = new VotingEscrow(address(SUSHI), "oSushi", "OSUSHI");
        controller = new GaugeController(address(escrow));
        minter = new Minter(address(SUSHI), address(controller));
    }

    function test_registerLP() public {}

    function test_emissionsCurve() public {}

}

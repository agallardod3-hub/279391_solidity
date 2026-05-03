// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract Consola{
    //event Debug(string mensaje, address invocador);
    uint256 private cantidad = 279391;

    function consultarcantidad() public view returns(uint256) {
    console.log("consultada por: ", msg. sender) ;
    //emit Debug("consultada por: msg. sender);
    return cantidad;
    }
}


// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Require{

    uint256 public numero = 279391;
    address private propietario;

    constructor(){
        propietario = msg.sender;
    }

    function cambiarCantidad(uint256 _num) public {
        //require(msg.sender==propietario, "No eres el propietario");
        require(_num > numero, "El nuevo numero debe ser mayor al actual");
        numero = _num;
    }

    function obtenerNumero() public view returns (uint256) {
        return numero;
    }
}
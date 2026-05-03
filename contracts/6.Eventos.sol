// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Eventos {

    uint256 private cantidad = 10;

    event CambioValorCantidad(address invocador, uint256 valorAnterior, uint256 nuevoValor);

    function cambiarCantidad(uint256 _nuevaCantidad) public {
        uint256 valorPrevio = cantidad;
        cantidad = _nuevaCantidad;
        emit CambioValorCantidad(msg.sender, valorPrevio, _nuevaCantidad);
    }

    function obtenerCantidad() public view returns (uint256) {
        return cantidad;
    }
}
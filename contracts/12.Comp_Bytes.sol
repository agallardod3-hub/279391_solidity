// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Complejo2 {
    bytes private datos;

    function guardarDatos(bytes memory _datos) public {
        datos = _datos;
    }

    function guardarDatosDesdeTexto(string memory _texto) public {
        datos = bytes(_texto);
    }

    function agregarDatos(bytes memory _datos) public {
        datos = bytes.concat(datos,_datos);
    }

    function obtenerDatos() public view returns(bytes memory) {
        return datos;
    }

    function obtenerDatosComostring() public view returns(string memory) {
        return string(datos);
    }
}
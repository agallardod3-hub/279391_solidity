// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Universidad279391 {

    struct Estudiante {
        uint256 id;
        string nombre;
        string carrera;
    }

    Estudiante[] public alumnos;
    address public dirContrato = 0x5FD6eB55D12E759a21C09eF703fe0CBa1DC9d88D;

    constructor() {
        console.log("Ejecutado por: 279391 - Alexander Yair Gallardo Diaz");
    }

    function agregarElemento(uint256 _id, string memory _nombre, string memory _carrera) public {
        alumnos.push(Estudiante(_id, _nombre, _carrera));
    }

    function contarElementos() public view returns (uint256) {
        return alumnos.length;
    }
}
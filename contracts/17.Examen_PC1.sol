// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Universidad279391 {

    struct Estudiante {
        uint256 id;
        string nombre;
        string carrera;
        bool estado;
    }

    Estudiante[] public alumnos;
    address public dirContrato = 0x5FD6eB55D12E759a21C09eF703fe0CBa1DC9d88D;

    modifier registrarLog() {
        console.log("Ejecutado por: 279391 - Alexander Yair Gallardo Diaz");
        _;
    }

    constructor() {
    }

    function agregarElemento(uint256 _id, string memory _nombre, string memory _carrera, bool _estado) public registrarLog() {
        
        for (uint i = 0; i < alumnos.length; i++) {
            require(alumnos[i].id != _id, "Un alumno con ese ID ya existe"); 
        }
        require(bytes(_nombre).length > 0, "El nombre no puede estar vacio");

        alumnos.push(Estudiante(_id, _nombre, _carrera, _estado));
    }

    function contarElementos() public view registrarLog() returns (uint256) {
        return alumnos.length;
    }
}
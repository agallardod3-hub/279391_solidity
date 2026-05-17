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

    constructor() {
        console.log("Ejecutado por: 279391 - Alexander Yair Gallardo Diaz");
        alumnos.push(Estudiante(1, "Pedro Sanchez", "Sistemas"));
    }
}
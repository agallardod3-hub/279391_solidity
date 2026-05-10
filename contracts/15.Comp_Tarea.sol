// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Tarea {
    
    address public owner;

    struct Mensaje {
        address from;
        address to;
        string contenido;
        uint256 timestamp;
    }

    Mensaje[] public historialMensajes;

    event MensajeEnviado(
        address indexed from, 
        address indexed to, 
        string contenido, 
        uint256 timestamp
    );

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Error: Solo el propietario puede enviar mensajes.");
        _;
    }

    function enviarMensaje(address _to, string memory _contenido) public onlyOwner {
        Mensaje memory nuevoMensaje = Mensaje({
            from: msg.sender,
            to: _to,
            contenido: _contenido,
            timestamp: block.timestamp
        });

        historialMensajes.push(nuevoMensaje);

        emit MensajeEnviado(msg.sender, _to, _contenido, block.timestamp);
    }

    function obtenerTotalMensajes() public view returns (uint256) {
        return historialMensajes.length;
    }
}
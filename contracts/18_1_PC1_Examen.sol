// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Veterinaria421528 {
    
    struct Mascota {
        uint256 id;	
        string apodo;	
        uint256 edad;
        string raza;
        bool estado;
    }

    Mascota[] public mascotas;


    uint256 public posicion;
    address public direccion;

    constructor(uint256 _pos) {
        posicion = _pos;
        direccion = msg.sender;
    }

    function agregarElemento(uint256 _id, string memory _apodo, uint256 _edad, string memory _raza, bool _estado) public {
        mascotas.push(Mascota(_id, _apodo, _edad, _raza, _estado));
    }

    function contarElementos() public view returns(uint256){
        return mascotas.length;
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }
    
    function pintarElementosActivos() public view {
        console.log("Ejecutado por Luis Flores");
        
        for(uint256 i =0; i < mascotas.length; i++) {
            if(mascotas[i].estado == true) {
                console.log("Mascota activa: ", mascotas[i].id, mascotas[i].apodo);
            }
        }

            
    }

    function inactivarEstado(uint256 _id) public {
         for(uint256 i =0; i < mascotas.length; i++) {
            Mascota storage m = mascotas[i]; 

            if(m.id == _id) {
                m.estado = false;
            }

         }
    }
   
}
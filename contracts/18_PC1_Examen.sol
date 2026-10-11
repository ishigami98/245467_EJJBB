// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Almacen245467{
    
    struct Producto {
        uint256 id;
        string nombre;
        uint256 cantidad;
        uint256 precio;
    }
    
    Producto[] public productos;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }
}
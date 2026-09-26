// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Variablesimples {
    uint256 private edad; //por defecto toma el valor de cero

    constructor(uint256 _edad){
        edad = _edad;
    }
    
    function cambiarEdad(uint256 _edad) public {
        edad = edad;
    }
    
    function devolverEdad() public view returns (uint256) {
        return edad;
    }
}
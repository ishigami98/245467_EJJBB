// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ComplejosStruct {

    struct Alumno {
        uint256 codigo;
        string nombre;
        uint256 edad;
    }

    Alumno[] public alumnos;

    function agregarAlumno(uint256 _codigo, string memory _nombre, uint56 _edad) public {
        alumnos.push(Alumno(_codigo, _nombre, _edad));
    }

    //tu puedes devolver mas de un resultado
    function mostrarAlumnov1(uint256 _indice) public view returns(uint256 codigo, string memory nombre){
        return(alumnos[_indice].codigo, alumnos[_indice].nombre);
    }

    function mostrarAlumnov2(uint256 _indice) public view returns(uint256 Codigo, string memory Nombre, uint256 Edad){
        Alumno memory al = alumnos[_indice];
        return(al.codigo, al.nombre, al.edad);
    }

    function mostrarAlumnov3(uint256 _indice) public view returns(Alumno memory alumno){
        require(_indice < alumnos.length, "Posicion Incorrecta" );
        Alumno memory al = alumnos[_indice];
        return(al);
    }
}
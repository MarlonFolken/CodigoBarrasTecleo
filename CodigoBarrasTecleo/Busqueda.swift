//
//  Busqueda.swift
//  CodigoBarrasTecleo
//
//  Created by Dannah D on 22/12/14.
//  Copyright (c) 2014 Marlon Vargas Contreras. All rights reserved.
//

import Foundation

//Contador de numeros
func contadorDigitos (#numeroIntroducido: String) -> Int {
    var longitud: Int = 0
    for _ in numeroIntroducido {
        ++longitud
    }
    return longitud
}


//Listado de productos en UPC-A (12 ó 10+2 números) y EAN-13 (13 y 14 números)
func tipoCodigo (#longitud: Int) -> String {
    if longitud > 12 {
        return "EAN-13"
    } else if longitud < 13 && longitud > 9{
        return "UPC-A"
    } else {
        return "Número incompleto"
    }
}

//llama a tipoCodigo para saber en que codigo buscara
func procedimiento (#numeroIntroducido: String) -> String{
    var respuesta = ""
    respuesta = tipoCodigo(longitud: contadorDigitos(numeroIntroducido: numeroIntroducido))
    return respuesta
}

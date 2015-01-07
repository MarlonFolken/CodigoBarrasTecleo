//
//  Productos.swift
//  CodigoBarrasTecleo
//
//  Created by Dannah D on 22/12/14.
//  Copyright (c) 2014 Marlon Vargas Contreras. All rights reserved.
//

import Foundation

struct Producto {
    //13 digitos
    let keyEAN = [
        "7501003337139", "7501028822504"
    ]
    let eanNombre = [
        "Pimienta dulce molida", "Pegamento Blanco Escolar"
    ]
    let eanPresentacion = [
        "67 gramos. Especial", "490 gramos"
    ]
    let eanPrecio = [
        "$34.99", "$68.50"
    ]
    
    //10-12 digitos
    let keyUPC = [
        "7750390730", "719886152542"
    ]
    let upcNombre = [
        "Paleta bomba sandia", "Pelon pelo rico"
    ]
    let upcPresentacion = [
        "15 gramos", "35 gramos. Sandia"
    ]
    let upcPrecio = [
        "$0.90", "$4.90"
    ]
}

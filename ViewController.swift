//
//  ViewController.swift
//  CodigoBarrasTecleo
//
//  Created by Dannah D on 22/12/14.
//  Copyright (c) 2014 Marlon Vargas Contreras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiquetaCodigoEscrito: UILabel!
    @IBOutlet weak var labelPNombre: UILabel!
    @IBOutlet weak var labelPDNombre: UILabel!
    @IBOutlet weak var labelPPresentacion: UILabel!
    @IBOutlet weak var labelPDPresentacion: UILabel!
    @IBOutlet weak var labelPPrecio: UILabel!
    @IBOutlet weak var labelPDPrecio: UILabel!
    let productos = Producto()
    var numIntroducidoString = ""
    var clasificacionResultante = ""
    var numIntroducido: Int = 0
    var banderaEncontrado = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelPDPresentacion.text = "Digite código de barras."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnUno() {
        numIntroducidoString += "1"
        etiquetaCodigoEscrito.text = numIntroducidoString
    }
    @IBAction func btnDos() {
        numIntroducidoString += "2"
        etiquetaCodigoEscrito.text = numIntroducidoString
    }
    @IBAction func btnTres() {
        numIntroducidoString += "3"
        etiquetaCodigoEscrito.text = numIntroducidoString
    }
    @IBAction func btnCuatro() {
        numIntroducidoString += "4"
        etiquetaCodigoEscrito.text = numIntroducidoString
    }
    @IBAction func btnCinco() {
        numIntroducidoString += "5"
        etiquetaCodigoEscrito.text = numIntroducidoString
    }
    @IBAction func btnSeis() {
        numIntroducidoString += "6"
        etiquetaCodigoEscrito.text = numIntroducidoString
    }
    @IBAction func btnSiete() {
        numIntroducidoString += "7"
        etiquetaCodigoEscrito.text = numIntroducidoString
    }
    @IBAction func btnOcho() {
        numIntroducidoString += "8"
        etiquetaCodigoEscrito.text = numIntroducidoString
    }
    @IBAction func btnNueve() {
        numIntroducidoString += "9"
        etiquetaCodigoEscrito.text = numIntroducidoString
    }
    @IBAction func btnCero() {
        numIntroducidoString += "0"
        etiquetaCodigoEscrito.text = numIntroducidoString
    }
    
    @IBAction func btnBorrar() {
        numIntroducidoString = ""
        numIntroducido = 0
        etiquetaCodigoEscrito.text = ""
        clasificacionResultante = ""
        labelPNombre.text = ""
        labelPDNombre.text = ""
        labelPPresentacion.text = ""
        labelPDPresentacion.text = "Digite código de barras."
        labelPPrecio.text = ""
        labelPDPrecio.text = ""
        banderaEncontrado = false
        
    }
    
    @IBAction func btnBuscar() {
        clasificacionResultante = procedimiento(numeroIntroducido: numIntroducidoString)
        if clasificacionResultante != "Número incompleto" {
            //traer datos
            //busqueda para productos EAN
            if clasificacionResultante == "EAN-13"{
                var index: Int = 0
                for llave in productos.keyEAN{
                    if llave == numIntroducidoString {
                        labelPNombre.text = "Nombre:"
                        labelPDNombre.text = productos.eanNombre[index]
                        labelPPresentacion.text = "Presentación:"
                        labelPDPresentacion.text = productos.eanPresentacion[index]
                        labelPPrecio.text = "Precio:"
                        labelPDPrecio.text = productos.eanPrecio[index]
                        banderaEncontrado = true
                        break
                    }
                    ++index
                    
                }
            } else {
                //busqueda para productos UPC
                var index: Int = 0
                for llave in productos.keyUPC{
                    if llave == numIntroducidoString {
                        labelPNombre.text = "Nombre:"
                        labelPDNombre.text = productos.upcNombre[index]
                        labelPPresentacion.text = "Presentación:"
                        labelPDPresentacion.text = productos.upcPresentacion[index]
                        labelPPrecio.text = "Precio:"
                        labelPDPrecio.text = productos.upcPrecio[index]
                        banderaEncontrado = true
                        break
                    }
                    ++index
                    
                }
            }
            //Cuando no encuentra un numero legal
            if !banderaEncontrado {
                labelPDPresentacion.text = "Producto no registrado"
            }
        } else {
            labelPDPresentacion.text = "Número incompleto. Favor de Borrar y teclear de nuevo."
        }
    }
    
    
}


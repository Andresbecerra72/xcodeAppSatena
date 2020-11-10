//
//  CheckinViewController.swift
//  satena
//
//  Created by Andres Becerra on 8/11/20.
//

import UIKit
import SafariServices

class CheckinViewController: UIViewController {
    
    // Objetos y controles
    @IBOutlet weak var headerImage: UIImageView!
    
    
    // ---------main--------------------------
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // -------Metodos-----------------
    
    @IBAction func checkinButton(_ sender: Any) {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.satena.com//usuario/formulario-covid/")!)
        present(vc, animated: true)
    }
    
    
} // END class

/*
 Centralizar el uso de las impresoras y los recursos digitales, diseñar un solo medio para las impresiones y el uso de papel, ademas de continuar con las campañas de cero papel, la idea es crear solo un punto de impresión de documentos donde se pueda controlar su uso y ademas del gasto del papel en la empresa, aquí puede llegar todo el papel que se puede reutilizar y dejar solo una impresora de servicio conectada a la red.


 Realizar una análisis de los gastos de cada departamento y las funciones que desempeña el personal, con el fin de identificar las actividades, los bienes y funciones que no son necesarias en esta etapa de las operaciones, fusionando cargos, secciones o departamentos, realizar un inventario de bienes que no son requeridos por obsoletos o porque su uso es mínimo o parcial promoviendo su entrega o venta.


 Analizar el uso de los formatos, cuadernillos y tareas que se encuentran en cada Dirección, la empresa todavía usa una serie de formatos que pueden ser migrados a la nube evitando el gasto en la compra de estos cuadernillos, o la impresiones a una cara de este tipo de formatos, la idea es verificar si actualmente son necesarios, se pueden fusionar o suprimir.
 
 
 */

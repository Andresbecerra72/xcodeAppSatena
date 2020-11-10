//
//  OfertasViewController.swift
//  satena
//
//  Created by Andres Becerra on 8/11/20.
//

import UIKit
import SafariServices

class OfertasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    // Objetos y Controles
    @IBOutlet weak var cardTableView: UITableView!
  
    
    
    
    // variables
    let pictures: [UIImage] = [
                                UIImage(named: "1.jpg")!,
                                UIImage(named: "2.jpg")!,
                                UIImage(named: "3.jpg")!,
                                UIImage(named: "4.jpg")!,
                                UIImage(named: "5.jpg")!,
                                UIImage(named: "1.jpg")!
                             ]
    
    let titles: [String] = [
                            "Bogotà - Apartadò",
                            "Apartadò - Bogotà",
                            "Medellìn - Bahia Solano",
                            "Bahia Solano - Medellìn",
                            "Medellìn - Barranquilla",
                            "Barranquilla - Medellìn"
                            ]
    
    let costs: [String] = [
                           "COP 194.900",
                           "COP 187.000",
                           "COP 166.800",
                           "COP 145.400",
                           "COP 178.900",
                           "COP 178.300"
                        ]
    
    let descriptions: [String] = []

    
    
// -------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(OfertasViewController.WebButton))
        cardTableView.addGestureRecognizer(tap)
        cardTableView.isUserInteractionEnabled = true
    }
    

   // --------Metodos-------------
    
    
    // metodos para definir celdas y columnas de la Tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
        
        cell.configure(picture: pictures[indexPath.row], title: titles[indexPath.row], cost: costs[indexPath.row])
        
        
        return cell
    }

    
    
    // accion para abrir la pagina rutas y destinos
    @objc func WebButton(_ sender: Any) {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.satena.com/comercial/rutas-destinos/")!)
        present(vc, animated: true)
        
    }
    
    
    
    
} // END class

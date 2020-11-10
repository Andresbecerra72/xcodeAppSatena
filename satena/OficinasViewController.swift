//
//  OficinasViewController.swift
//  satena
//
//  Created by Andres Becerra on 8/11/20.
//

import UIKit

class OficinasViewController: UIViewController {
    
    
    // Objetos y controles
    let tableView: UITableView = {
        let tb = UITableView()
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
    }()
    
    // variables
    
    var selectedIndex: IndexPath = IndexPath(row: 0, section: 0)
    
    
    let data = [
         MCDropData(name: "Aguachica - HAY",
                   direccion: "Direcciòn: Calle 3 No. 13-63",
                   lugar: "Aeropuerto Hacaritama",
                   telefono: "Oficina: (313) 801 41 27",
                   celular: "Celular: 313 801 41 27",
                   cellAeropuerto: "",
                   email: "Correo: aguachica@satena.com",
                   refmail: "mailto:aguachica@satena.com",
                   info: ""),
        MCDropData(name:"Apartadó - APO",
                   direccion: "Direcciòn: Carrera 103 No. 99 - 44",
                   lugar: "Edificio Los Almendros, Barrio Ortiz",
                   telefono:" (57+4) 8283223 - (57+4) 8282327 - (57+4) 8285011",
                   celular: "(311) 254 68 06 - (311) 432 50 45",
                   cellAeropuerto: "(311) 2362998",
                   email: "apartado@satena.com",
                   refmail: "mailto:apartado@satena.com",
                   info:""),
        MCDropData(name:"Araracuara - ACR",
                   direccion: "Direcciòn: Vía aeropuerto",
                   lugar: "",
                   telefono:" ",
                   celular: "(310) 219 83 25 - (313) 868 59 83",
                   cellAeropuerto: "(310) 219 83 25",
                   email: "araracuara@satena.com",
                   refmail: "mailto:araracuara@satena.com",
                   info:""),
        MCDropData(name:"Arauca - AUC",
                   direccion: "Aeropuerto Santiago Pérez",
                   lugar: "",
                   telefono:"(310) 209 73 20",
                   celular: "(310) 209 72 79",
                   cellAeropuerto: "(323) 232 68 47",
                   email: "araucacentro@satena.com",
                   refmail: "mailto:araucacentro@satena.com",
                   info:"Ventas: Calle 17 No. 19-66"),
        MCDropData(name:"Bahía Solano - BSC",
                   direccion: "Calle 3 No 1-149",
                   lugar: "Barrio el Carmel",
                   telefono:"",
                   celular: "(313) 422 27 94",
                   cellAeropuerto: "(311) 876 89 61",
                   email: "bahiasolano@satena.com",
                   refmail: "mailto:bahiasolano@satena.com",
                   info: ""),
        MCDropData(name:"Bogotá -BOG",
                   direccion: "Av El Dorado No 103-08 Entrada 1, Interior 11",
                   lugar: "Dirección Comercial: Carrera 103 N°25D-24, Fontibón",
                   telefono:"(57+1) 423 85 30",
                   celular: "314 359 73 57",
                   cellAeropuerto: "WhatsApp 313 438 46 22",
                   email: "ventasaeropuerto@satena.com",
                   refmail: "mailto:ventasaeropuerto@satena.com",
                   info:"Terminal Puente Aereo Entrada Principal, Puerta 3"),
        MCDropData(name:"Bucaramanga- BGA",
                   direccion: "Calle 35 No 16-20 Local 5",
                   lugar: "Pasaje Santander",
                   telefono:"(57+7) 6301705 - (57+7) 6707087",
                   celular: "(311) 236 29 96",
                   cellAeropuerto: "(311) 236 29 97",
                   email: "bucaramanga@satena.com",
                   refmail: "mailto:bucaramanga@satena.com",
                   info:""),
        MCDropData(name:"Buenaventura - BUN",
                   direccion: "Calle 1 No. 2A – 39",
                   lugar: "Centro",
                   telefono:"(57+2) 2418009 - (57+2) 2423825",
                   celular: "(310) 325 87 22",
                   cellAeropuerto: "(310) 325 87 22",
                   email: "buenaventura@satena.com",
                   refmail: "mailto:buenaventura@satena.com",
                   info:""),
        MCDropData(name:"Cali - CLO",
                   direccion: "Cra 5 No. 8 - 12",
                   lugar: "",
                   telefono:" (57+2) 8857709",
                   celular: " (311) 254 68 22, Carga:(315) 897 02 39",
                   cellAeropuerto: "(57+2)666 33 70 - (57+2)666 32 95",
                   email: "cali@satena.com",
                   refmail: "mailto:cali@satena.com",
                   info:"Bodega de Carga: Alfonso Bonilla Aragon, Terminal de carga, bodega No.5 TAESCOL."),
        MCDropData(name:"Corozal - CZU",
                   direccion: "Aeropuerto",
                   lugar: "",
                   telefono:"(320) 7899631",
                   celular: "(320) 7899631 - (300) 8102153",
                   cellAeropuerto: "",
                   email: "corozal@satena.com",
                   refmail: "mailto:corozal@satena.com",
                   info:""),
        MCDropData(name:"Florencia - FLA",
                   direccion: "Carrera 13 No 12-57",
                   lugar: "Barrio San Francisco",
                   telefono:"(57+8) 438 02 74",
                   celular: "(320) 303 77 83 - (318) 493 10 41",
                   cellAeropuerto: "(313) 462 83 47",
                   email: "florencia@satena.com",
                   refmail: "mailto:florencia@satena.com",
                   info:""),
        MCDropData(name:"Guapi - GPI",
                   direccion: "Avenida Aeropuerto Juan Casiano",
                   lugar: "Aeropuerto",
                   telefono:"(57+2) 840 11 66",
                   celular: "(311) 876 89 58 - (310) 322 74 46",
                   cellAeropuerto: "(311) 254 68 09",
                   email: "guapi@satena.com",
                   refmail: "mailto:guapi@satena.com",
                   info:""),
        MCDropData(name:"Inírida - PDA",
                   direccion: "Carrera 3A No.15-05 Locales 7 y 8",
                   lugar: "El Puerto",
                   telefono:"(313) 422 27 41",
                   celular: "(311) 229 77 28",
                   cellAeropuerto: "(311) 229 77 28",
                   email: "inirida@satena.com",
                   refmail: "mailto:inirida@satena.com",
                   info:""),
        MCDropData(name:"Ipiales - IPI",
                   direccion: "Carrera 7 No. 16-49",
                   lugar: "",
                   telefono:"(57+2) 7256085 – (57+2) 7256086",
                   celular: "(321) 232 49 29",
                   cellAeropuerto: "(311) 254 68 18",
                   email: "ipiales@satena.com",
                   refmail: "mailto:ipiales@satena.com",
                   info:""),
        MCDropData(name:"La Chorrera - LCH",
                   direccion: "Aeropuerto La Chorrera",
                   lugar: "",
                   telefono:"(320) 850 94 51",
                   celular: "(320) 850 9451 – (320) 850 8034",
                   cellAeropuerto: "",
                   email: "chorrera@satena.com",
                   refmail: "mailto:chorrera@satena.com",
                   info:""),
        MCDropData(name:"La Macarena - LMC",
                   direccion: "Aeropuerto La Macarena",
                   lugar: "",
                   telefono:"(311) 532 01 90",
                   celular: "(321) 395 29 25",
                   cellAeropuerto: "",
                   email: "macarena@satena.com",
                   refmail: "mailto:macarena@satena.com",
                   info:""),
        MCDropData(name:"La Pedrera - LPD",
                   direccion: "Aeropuerto La Pedrera",
                   lugar: "",
                   telefono:"(320) 488 19 46",
                   celular: "(320) 488 19 46",
                   cellAeropuerto: "",
                   email: "leticia@satena.com",
                   refmail: "mailto:leticia@satena.com",
                   info:""),
        MCDropData(name:"Leticia - LET",
                   direccion: "Aeropuerto Alfredo Vasquez Cobo",
                   lugar: "",
                   telefono:"(57+8) 5924845",
                   celular: "(312) 457 62 91 – (310) 329 05 07",
                   cellAeropuerto: "(310) 329 05 07",
                   email: "leticia@satena.com",
                   refmail: "mailto:leticia@satena.com",
                   info:""),
        MCDropData(name:"Medellin - EOH",
                   direccion: "Calle 7 Sur No 42-70, Oficina 1111",
                   lugar: "Edificio Forum",
                   telefono:"(57+4) 444 77 00",
                   celular: "(312) 457 64 32",
                   cellAeropuerto: "(310) 359 20 16",
                   email: "medellin@satena.com",
                   refmail: "mailto:medellin@satena.com",
                   info:"Aeropuerto Olaya Herrera: Carrera 65A No 13-157"),
        MCDropData(name:"Mitú - MVP",
                   direccion: "Aeropuerto Fabio A. León Bentley",
                   lugar: "",
                   telefono:"(310) 803 73 98",
                   celular: "(321) 205 52 53",
                   cellAeropuerto: "",
                   email: "mitu@satena.com",
                   refmail: "mailto:mitu@satena.com",
                   info:""),
        MCDropData(name:"Mocoa",
                   direccion: "Carrera 9ª No. 17 - 42",
                   lugar: "Edificio Julio Muriel – Local 101",
                   telefono:"(57+8) 429 51 06",
                   celular: "(310) 560 86 03",
                   cellAeropuerto: "(311) 254 68 98",
                   email: "mocoa@satena.com",
                   refmail: "mailto:mocoa@satena.com",
                   info:""),
        MCDropData(name:"Neiva - NVA",
                   direccion: "Carrera 8 No 20-06",
                   lugar: "Punto de Venta",
                   telefono:"(57+8) 857 67 76",
                   celular: "(301) 445 77 14 - (321) 371 57 76",
                   cellAeropuerto: "",
                   email: "neiva@satena.com",
                   refmail: "mailto:neiva@satena.com",
                   info:""),
        MCDropData(name:"Nuquí - NQU",
                   direccion: "Barrio la Union",
                   lugar: "",
                   telefono:"(313) 846 67 51 - (315) 735 37 49",
                   celular: "(315) 735 37 49",
                   cellAeropuerto: "",
                   email: "nuqui@satena.com",
                   refmail: "mailto:nuqui@satena.com",
                   info:""),
        MCDropData(name:"Orito",
                   direccion: "Calle 8 Nº 11-49",
                   lugar: "Marco Fidel Suarez",
                   telefono:"(57+8) 429 01 47",
                   celular: "(321) 205 52 78",
                   cellAeropuerto: "",
                   email: "orito@satena.com",
                   refmail: "mailto:orito@satena.com",
                   info:""),
        MCDropData( name:"Pitalito - PTX",
                    direccion: "Calle 17 No 2-59",
                    lugar: "Frente al Metro",
                    telefono:"(312) 528 13 16 - (313) 499 26 02",
                    celular: "(314) 421 60 82",
                    cellAeropuerto: "",
                    email: "pitalito@satena.com",
                    refmail: "mailto:pitalito@satena.com",
                    info:""),
        MCDropData(name:"Providencia - PVA",
                   direccion: "Aeropuerto El Embrujo",
                   lugar: "",
                   telefono:"",
                   celular: "(313) 789 83 61",
                   cellAeropuerto: "",
                   email: "sanandres@satena.com",
                   refmail: "mailto:sanandres@satena.com",
                   info:""),
        MCDropData(name:"Puerto Asís - PUU",
                   direccion: "Carrera 20 No 9-92",
                   lugar: "Centro",
                   telefono:"(57+8) 422 78 00",
                   celular: "(311) 236 2974 – (311) 236 29 75 - (320) 271 38 22",
                   cellAeropuerto: "(57+8) 422 79 53",
                   email: "puertoasis@satena.com",
                   refmail: "mailto:puertoasis@satena.com",
                   info:""),
        MCDropData( name:"Puerto Carreño - PCR",
                    direccion: "Av. Orinoco No. 2 - 19 ",
                    lugar: "Barrio La Plazuela",
                    telefono:"(320) 938 07 54",
                    celular: "(310) 322 90 29 – (320) 938 07 54",
                    cellAeropuerto: "(320) 938 07 54",
                    email: "puertocareno@satena.com",
                    refmail: "mailto:puertocareno@satena.com",
                    info:""),
        MCDropData(name:"Puerto Leguízamo - LQM",
                   direccion: "Calle 2 No. 1-68 Centro",
                   lugar: "Centro",
                   telefono:"(312) 541 70 79",
                   celular: "(312) 497 21 91 – (311) 561 06 28",
                   cellAeropuerto: "(312) 541 70 79",
                   email: "leguizamo@satena.com",
                   refmail: "mailto:leguizamo@satena.com",
                   info:""),
        MCDropData(name:"Quibdó - UIB",
                   direccion: "Calle 2 No 24A – 35",
                   lugar: "Frente a la Alcaldía y Aeropuerto El Caraño Local 9",
                   telefono:"(57+4) 672 12 36",
                   celular: "(321) 458 35 04",
                   cellAeropuerto: "(313) 422 28 14",
                   email: "quibdo@satena.com",
                   refmail: "mailto:quibdo@satena.com",
                   info:""),
        MCDropData( name:"San Andrés - ADZ",
                    direccion: "Aeropuerto Gustavo Rojas Pinilla",
                    lugar: "",
                    telefono:"(313) 422 28 06",
                    celular: "(313) 422 28 05",
                    cellAeropuerto: "(313) 422 28 06",
                    email: "sanandres@satena.com",
                    refmail: "mailto:sanandres@satena.com",
                    info:""),
        MCDropData( name:"San José del Guaviare - SJE",
                    direccion: "Aeropuerto Jorge Enrique González",
                    lugar: "",
                    telefono:"(322) 402 18 92",
                    celular: "(322) 402 18 92",
                    cellAeropuerto: "(322) 402 18 92",
                    email: "sanjose.ventas@satena.com",
                    refmail: "mailto:sanjose.ventas@satena.com",
                    info:""),
        MCDropData(name:"San Vicente del Caguán - SVI",
                   direccion: "Calle 3 No. 5 - 30",
                   lugar: "Barrio Hernandez",
                   telefono:"(57+8) 464 46 85",
                   celular: "(311) 236 29 92",
                   cellAeropuerto: "(314) 347 78 94",
                   email: "sanvicente@satena.com",
                   refmail: "mailto:sanvicente@satena.com",
                   info:""),
        MCDropData(name:"Saravena - RVE",
                   direccion: "Calle 25 No. 17 - 36 ",
                   lugar: "Barrio Modelo",
                   telefono:"(57+7) 889 22 15",
                   celular: "(311) 254 68 95",
                   cellAeropuerto: "(311) 254 68 96",
                   email: "saravena@satena.com",
                   refmail: "mailto:saravena@satena.com",
                   info:""),
        MCDropData(name:"Tame - TME",
                   direccion: "Aeropuerto Tame ",
                   lugar: "Barrio Modelo",
                   telefono:"(313) 647 40 18",
                   celular: "(311) 254 68 96",
                   cellAeropuerto: "(311) 254 68 97",
                   email: "tame@satena.com",
                   refmail: "mailto:tame@satena.com",
                   info:""),
        MCDropData(name:"Tarapacá - TCP",
                   direccion: "Aeropuerto Tarapacá ",
                   lugar: "",
                   telefono:"",
                   celular: "(313) 859 03 54",
                   cellAeropuerto: "(313) 859 03 54",
                   email: "leticia@satena.com",
                   refmail: "mailto:leticia@satena.com",
                   info:""),
        MCDropData(name:"Tolú - TLU",
                   direccion: "Aeropuerto Golfo de Morrosquillo ",
                   lugar: "",
                   telefono:"",
                   celular: "(320) 789 96 31",
                   cellAeropuerto: "(320) 789 96 31",
                   email: "tolu@satena.com",
                   refmail: "mailto:tolu@satena.com",
                   info:""),
        MCDropData(name:"Tumaco - TCO",
                   direccion: "Calle Sucre 6 - 57",
                   lugar: "Frente a Merca Z",
                   telefono:"(57+2) 727 37 38 - (57+2) 727 28 72",
                   celular: "(317) 312 12 47 - (312) 877 50 13 - (317) 700 06 39",
                   cellAeropuerto: "(312) 876 87 06",
                   email: "tumaco@satena.com",
                   refmail: "mailto:tumaco@satena.com",
                   info:""),
        MCDropData(name:"Villagarzón - VGZ",
                   direccion: "Avenida principal frente al banco BBVA",
                   lugar: "",
                   telefono:"",
                   celular: "(310) 252 27 06",
                   cellAeropuerto: "(314) 451 47 38",
                   email: "mocoa@satena.com",
                   refmail: "mailto:mocoa@satena.com",
                   info:""),
        MCDropData(name:"Villavicencio - VVC",
                   direccion: "Carrera 31 # 40 - 12 oficina 6 piso 2",
                   lugar: " Centro, Edificio Santa Catalina",
                   telefono:"",
                   celular: "(322) 402 27 39",
                   cellAeropuerto: "(321) 275 07 76",
                   email: "villavicencio.ventas@satena.com",
                   refmail: "mailto:villavicencio.ventas@satena.com",
                   info:""),
        
      /*  MCDropData(name: "",
                   iata: "",
                   direccion: "",
                   lugar: "",
                   telefono: "",
                   celular: "",
                   cellAeropuerto: "",
                   email: "",
                   refmail: "",
                   info: ""),
        
    */
                ]

    
    // --------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView() // llama la funciòn
       
    }
    
// -------------Metodos------------------
    fileprivate func setupTableView() {
        view.addSubview(tableView) // la tabla se muestra en la vista
        
        // codigo para definir los constraints
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        tableView.register(DropCell.self, forCellReuseIdentifier: "cell") //registra el Objeto

        tableView.separatorStyle = .none
        
         tableView.delegate = self
         tableView.dataSource = self
        
    }

    
    
    
    
} // END Class


// -------Models-------------

struct MCDropData {
    var name:String
    var direccion: String?
    var lugar: String?
    var telefono: String?
    var celular: String?
    var cellAeropuerto: String?
    var email: String?
    var refmail: String?
    var info: String?
}


//--------------Extensions----------------------


extension OficinasViewController: UITableViewDelegate, UITableViewDataSource {
    
    // funcion para establecer el largo de la celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if selectedIndex == indexPath {return 180}
        return 40
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedIndex = indexPath
        
        tableView.beginUpdates()
        tableView.reloadRows(at: [selectedIndex], with: .none)
        tableView.endUpdates()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DropCell
        cell.data = data[indexPath.row]
        
        // caracteristicas de la celdas
        cell.selectionStyle = .none
        cell.animate() // llama el metodo animate del Objeto DropCell
        
        return cell
    }
}

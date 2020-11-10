//
//  DropCell.swift
//  satena
//
//  Created by Andres Becerra on 9/11/20.
//

import UIKit

class DropCell: UITableViewCell {
    
   
   
    
    var data: MCDropData? {
        didSet {
            guard let data = data else {
                return
            }

           
                self.name.text = data.name
                self.direccion.text = data.direccion
                self.lugar.text = data.lugar
                self.telefono.text = data.telefono
                self.celular.text = data.celular
                self.email.text = data.email
              
               
                
            
           
            
        }
    }
    
    // --------------Caracteristicas de los Controles------------------------
    
    // define el container
    fileprivate let container: UIView = {
        let v = UIView()
        
        v.translatesAutoresizingMaskIntoConstraints = false
        v.clipsToBounds = true
        //v.backgroundColor = UIColor(red: 120/255, green: 150/255, blue: 200/255, alpha: 0.4)
        v.layer.cornerRadius = 8
        return v
    }()
    
    
    // define el icono
    fileprivate var imgView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(systemName: "mappin.and.ellipse")!
        iv.contentMode = .scaleAspectFit
        // iv.layer.shadowColor = UIColor.black.cgColor
        // iv.layer.shadowOffset = CGSize(width: 0, height: 4)
        // iv.layer.shadowOpacity = 0.7
        // iv.backgroundColor = UIColor(red: 120/255, green: 150/255, blue: 200/255, alpha: 0.2)
        
        
        return iv
    }()
    
      
    
    // define cada Label
    fileprivate let name: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        // label.text = "xxxxx"
        label.textColor = UIColor(red: 14/255, green: 42/255, blue: 134/255, alpha: 1)
        label.textAlignment = .center
        label.backgroundColor = UIColor(red: 179/255, green: 224/255, blue: 255/255, alpha: 0.4)
        label.layer.cornerRadius = 8
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    fileprivate let direccion: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        // label.text = "xxxxx"
        label.textColor = .gray
        label.numberOfLines = -1
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    fileprivate let lugar: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        // label.text = "xxxxx"
        label.textColor = .lightGray
        label.numberOfLines = -1
        // label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    fileprivate let telefono: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        // label.text = "xxxxx"
        label.textColor = .lightGray
        label.numberOfLines = -1
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    fileprivate let celular: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        // label.text = "xxxxx"
        label.textColor = .lightGray
        label.numberOfLines = -1
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    fileprivate let email: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        // label.text = "xxxxx"
        label.textColor = .blue
        label.numberOfLines = -1
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    
    // ----------------Inicializaciòn----------------------------
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
                
       
        contentView.addSubview(container)
       
        
        // define los datos de constraints del contenedor
        container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4).isActive = true
        container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4).isActive = true
        container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4).isActive = true
        container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4).isActive = true
        
        
        
            

            // se intregran los controles en el container
            container.addSubview(name)
            container.addSubview(direccion)
            container.addSubview(lugar)
            container.addSubview(telefono)
            container.addSubview(celular)
            container.addSubview(email)
        
            container.addSubview(imgView)
        
     
       
        
          

            
            // define los datos de constraints de los labels que tiene el container
            name.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
            name.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 4).isActive = true
            name.trailingAnchor.constraint(equalTo: imgView.leadingAnchor, constant: -4).isActive = true
            name.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
            imgView.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
            imgView.leadingAnchor.constraint(equalTo: name.trailingAnchor, constant: 4).isActive = true
            imgView.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -4).isActive = true
            imgView.heightAnchor.constraint(equalToConstant: 40).isActive = true
            
            direccion.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 10).isActive = true
            direccion.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 4).isActive = true
            direccion.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -4).isActive = true
            direccion.heightAnchor.constraint(greaterThanOrEqualToConstant: 15).isActive = true
            direccion.layoutIfNeeded()
            
            lugar.topAnchor.constraint(equalTo: direccion.bottomAnchor).isActive = true
            lugar.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 4).isActive = true
            lugar.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -4).isActive = true
            lugar.heightAnchor.constraint(greaterThanOrEqualToConstant: 15).isActive = true
            lugar.layoutIfNeeded()

            telefono.topAnchor.constraint(equalTo: lugar.bottomAnchor).isActive = true
            telefono.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 4).isActive = true
            telefono.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -4).isActive = true
            telefono.heightAnchor.constraint(greaterThanOrEqualToConstant: 15).isActive = true
            
            celular.topAnchor.constraint(equalTo: telefono.bottomAnchor).isActive = true
            celular.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 4).isActive = true
            celular.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -4).isActive = true
            celular.heightAnchor.constraint(greaterThanOrEqualToConstant: 15).isActive = true
            
            email.topAnchor.constraint(equalTo: celular.bottomAnchor).isActive = true
            email.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 4).isActive = true
            email.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -4).isActive = true
            email.heightAnchor.constraint(greaterThanOrEqualToConstant: 15).isActive = true
            
          
        
          
   
        
        
        
        
    }
    
    
    
    // gestion del error
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    // -------------------Metodos---------------------------------
// funcion que realiza la animaciòn deplegable
    func animate() {
        
        UIView.animate(withDuration: 0.5, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: .curveEaseIn, animations:{
            self.contentView.layoutIfNeeded()
        })
        
    }
    
    
} // END class

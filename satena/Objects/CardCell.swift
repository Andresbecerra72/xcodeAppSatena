//
//  CardCell.swift
//  satena
//
//  Created by Andres Becerra on 8/11/20.
//

import UIKit

class CardCell: UITableViewCell {

   // Objetos y controles
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var costLable: UILabel!
    
    
    
    // ------Metodos----------------
    // funcion para recibir los parametos del Card
    func configure(picture:UIImage, title: String, cost: String){
        
        pictureView.image = picture
        titleLabel.text = title
        costLable.text = cost
        
        // caracteristicas del CARD
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cardView.layer.shadowOpacity = 1.0
        cardView.layer.masksToBounds = false
        cardView.layer.cornerRadius = 2.0
        
        
        

        
    }
    
    
    
    
}

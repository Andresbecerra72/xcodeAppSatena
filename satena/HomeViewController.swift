//
//  ViewController.swift
//  satena
//
//  Created by Andres Becerra on 7/11/20.
//
import UIKit
import iCarousel
import SafariServices

class HomeViewController: UIViewController, iCarouselDataSource {
    
    
    // Objetos y controles
    
    // Buttons
    @IBOutlet weak var fabButton: UIButton!
    @IBOutlet weak var twitter: UIButton!
    @IBOutlet weak var instagram: UIButton!
    @IBOutlet weak var facebook: UIButton!
    
    
    
    // Carousel
    let myCarousel: iCarousel = {
        let view = iCarousel()
        view.type = .cylinder
    
        return view
    }()

    // variables
    let pointX_Twitter = UserDefaults.standard // store data
    let pointX_Instagram = UserDefaults.standard // store data
    let pointX_Facebook = UserDefaults.standard // store data
    
    var twitterButtonCenter: CGPoint!
    var instagramButtonCenter: CGPoint!
    var facebookButtonCenter: CGPoint!
        
    var isButtonMenuOpen: Bool = false
    

    
    
    //--------- main----------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Define los objetos de la interface
        
        // Carateristicas de Fab Button
        fabButton.backgroundColor = .systemBlue
        fabButton.layer.cornerRadius = fabButton.frame.height / 2
        fabButton.layer.shadowColor = UIColor.black.cgColor
        fabButton.layer.shadowOpacity = 0.25
        fabButton.layer.shadowRadius = 5
        fabButton.layer.shadowOffset = CGSize(width: 0, height: 8)
        //fabButton.layer.masksToBounds = true
        fabButton.layer.zPosition = 1 // Float of the View
        
        // Social Media Buttons
        twitter.layer.zPosition = 1
        twitter.alpha = 0 // los controles aparecen con el valor 1
        twitter.applyShadow()
        instagram.layer.zPosition = 1
        instagram.alpha = 0 // los controles aparecen con el valor 1
        instagram.applyShadow()
        facebook.layer.zPosition = 1
        facebook.alpha = 0 // los controles aparecen con el valor 1
        facebook.applyShadow()
        
        isButtonMenuOpen = false
        
        // Almacena la pocision de los SocialMedia Buttons
        pointX_Twitter.set(twitter.center.x, forKey: "twitterBtnKey")
        pointX_Instagram.set(instagram.center.x, forKey: "instagramBtnKey")
        pointX_Facebook.set(facebook.center.x, forKey: "facebookBtnKey")

        
        // Barra superior transparente
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
        
        
        // Carusel
        view.addSubview(myCarousel) //***
        myCarousel.dataSource = self
        
        // auto Scroll
        //myCarousel.autoscroll = -0.3
        // tamaño del carrusel
        myCarousel.frame = CGRect(x: 0,
                                  y: 0,
                                  width: view.frame.size.width,
                                  height: view.frame.size.height - 130)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
            super.viewDidAppear(animated)
            twitterButtonCenter = twitter.center
            instagramButtonCenter = instagram.center
            facebookButtonCenter = facebook.center
        
        }
    
    
    
    
    // ---------metodos-----
    
    // metodo para la accion del Botòn Flotante
    @IBAction func fabButtonPressed(_ sender: Any) {
        
        
        if isButtonMenuOpen {
                    UIView.animate(withDuration: 0.3) {
                        
                       // print("SI \(self.isButtonMenuOpen)") // imprimir en consola
                        
                        self.fabButton.transform = .identity
                        self.fabButton.backgroundColor = .systemBlue
                        
                        
                        self.twitter.center = self.fabButton.center
                        self.instagram.center = self.fabButton.center
                        self.facebook.center = self.fabButton.center
                        
                        self.twitter.alpha = 0
                        self.instagram.alpha = 0
                        self.facebook.alpha = 0
                    }
                    
                    isButtonMenuOpen = false
                } else {
                    
                    
                    UIView.animate(withDuration: 0.3) {
                        
                        self.fabButton.transform = CGAffineTransform(rotationAngle: 45 * .pi / 180) // rotacion
                        self.fabButton.backgroundColor = .lightGray
                        self.fabButton.titleLabel?.layer.shadowColor = UIColor.blue.cgColor
                        self.fabButton.titleLabel?.layer.shadowOffset = CGSize(width: 0, height: 2)
                        self.fabButton.titleLabel?.layer.shadowOpacity = 0.2
                        
                        // condicion para determinar la posicion correcta de los botones
                        if self.pointX_Twitter.integer(forKey: "twitterBtnKey") != Int(self.twitterButtonCenter.x) {
                            // print("Aqui")
                            self.twitter.center.x = CGFloat(self.pointX_Twitter.integer(forKey: "twitterBtnKey"))
                            self.instagram.center.x = CGFloat(self.pointX_Instagram.integer(forKey: "instagramBtnKey"))
                            self.facebook.center.x = CGFloat(self.pointX_Facebook.integer(forKey: "facebookBtnKey"))
                        } else {
                            self.twitter.center = self.twitterButtonCenter
                            self.instagram.center = self.instagramButtonCenter
                            self.facebook.center = self.facebookButtonCenter
                        }
                        
                        // los controles aparecen con el valor 1
                        self.twitter.alpha = 1
                        self.instagram.alpha = 1
                        self.facebook.alpha = 1
                    }
                    isButtonMenuOpen = true
                }
        
    }
    
    
    
    // metodo para establecer el numero de Slides del carrusel
    func numberOfItems(in carousel: iCarousel) -> Int {
        return 5 // cantidad de Slides
    }

    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0,
                                        y: 0,
                                        width: self.view.frame.size.width,
                                        height: self.view.frame.size.height))
        // view.backgroundColor = .red
        
        // insert image Slide
        let imageview = UIImageView(frame: view.bounds)
        view.addSubview(imageview)
        imageview.contentMode = .scaleAspectFit
        imageview.image = UIImage(named: "slide\(index + 1)")
        
        return view
    }
    
  
    // acciones de los Botones de Social Media
    
    @IBAction func twitterWasPressed(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://twitter.com/AerolineaSatena")!)
        present(vc, animated: true)
    }
    
    @IBAction func instagramWasPressed(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.instagram.com/aerolineasatena/")!)
        present(vc, animated: true)
    }
    
    @IBAction func facebookWasPressed(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.facebook.com/aerolineasatena")!)
        present(vc, animated: true)
        
    }
    
    
    

} // END class


// Sombra de Social media Buttons
extension UIButton {
    func applyShadow() {
        layer.shadowOpacity = 0.6
    }
}



// ************ CODIGO NO USADO ********************
/*
    UIView.animate(withDuration: 0.3) {
        
        if self.fabButton.transform == .identity{
            self.fabButton.transform = CGAffineTransform(rotationAngle: 45 * .pi / 180) // rotacion
            self.fabButton.backgroundColor = .lightGray
            self.fabButton.titleLabel?.layer.shadowColor = UIColor.blue.cgColor
            self.fabButton.titleLabel?.layer.shadowOffset = CGSize(width: 0, height: 2)
            self.fabButton.titleLabel?.layer.shadowOpacity = 0.2
            
        }
        else{
            self.fabButton.transform = .identity
            self.fabButton.backgroundColor = .systemBlue
            
           
            
        }
    }
  */

//
//  TiquetesViewController.swift
//  satena
//
//  Created by Andres Becerra on 8/11/20.
//

import UIKit
import WebKit

class TiquetesViewController: UIViewController {
    
    
    // Objetos y controles
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var webView: WKWebView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        headerImage.image = UIImage(named: "quibdo.jpg")
        webView.load(URLRequest(url: URL(string: "https://kibe-9r.kiusys.net/widget/")!))
    }
    

    

}

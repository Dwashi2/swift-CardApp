//
//  CardCustomViewController.swift
//  CardApp
//
//  Created by Daniel Washington Ignacio on 14/07/21.
//

import UIKit

class CardCustomViewController: UIViewController {

    @IBOutlet weak var imageCardSelected: UIImageView!
    @IBOutlet weak var nameCardSelected: UILabel!
    
    @IBOutlet weak var numberCardSelected: UILabel!
    
    @IBOutlet weak var dateCardSelected: UILabel!
    
    
    var cardSelected: CartoesElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("OBAAAAAAA")
        print(self.cardSelected)
        
        self.imageCardSelected.image = UIImage(named: self.cardSelected?.bandeira ?? "")
        self.nameCardSelected.text = self.cardSelected?.nome
        self.numberCardSelected.text = self.cardSelected?.numero
        self.dateCardSelected.text = self.cardSelected?.data
        
    }
    

}

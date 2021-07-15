//
//  CardCell.swift
//  CardApp
//
//  Created by Daniel Washington Ignacio on 14/07/21.
//

import UIKit

class CardCell: UITableViewCell {
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var numeroLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var bandeiraImageView: UIImageView!
    
    @IBOutlet weak var viewImage: UIView!
    @IBOutlet weak var cardImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setup(value: CartoesElement?){
        
        if let _value = value {
            self.nomeLabel.text = _value.nome
            self.numeroLabel.text = _value.numero
            self.dateLabel.text = _value.data
            self.bandeiraImageView.image = UIImage(named: _value.bandeira)
            self.loadBackground(value: _value.bandeira)
            
        }
    }
    
    
    private func loadBackground(value: String){
        
        if value == Flag.mastercard.rawValue{
            
            self.cardImageView.image = UIImage(named: "fundo-master")
            
        }else{
            self.cardImageView.image = UIImage(named: "fundo-visa")
        }
    }
    
}

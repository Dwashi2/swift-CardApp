//
//  ViewController.swift
//  CardApp
//
//  Created by Daniel Washington Ignacio on 14/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardTableView: UITableView!

    
    private var arrayCards: [CartoesElement] = [CartoesElement(id: "1234", nome: "Tester Beta", data: "10/21", numero: "1233.1234. ...", bandeira: "mastercard"),CartoesElement(id: "0000", nome: "Tester Alpha", data: "12/01", numero: "0123.0123. ...", bandeira: "mastercard"),CartoesElement(id: "0123", nome: "Tester Zeta", data: "01/11", numero: "0000.1234. ...", bandeira: "visa")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.cardTableView.register(UINib(nibName: "CardCell", bundle: nil), forCellReuseIdentifier: "CardCell")
        self.cardTableView.delegate = self
        self.cardTableView.dataSource = self
    }


}

//MARK: - UITableViewDelegate,UITableViewDataSource

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayCards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CardCell? = tableView.dequeueReusableCell(withIdentifier: "CardCell",for: indexPath) as? CardCell
        
        cell?.setup(value: self.arrayCards[indexPath.row])
        
        return cell ?? UITableViewCell()
        
    }
    
    
}


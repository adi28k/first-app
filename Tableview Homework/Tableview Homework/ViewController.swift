
//  ViewController.swift
//  Tableview Homework
//
//  Created by Adilet Kistaubayev on 05.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var abilityLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var ability = Abilities()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        abilityLabel.text = ability.ability
        typeLabel.text = ability.type
        imageView.image = UIImage(named: ability.image)
        descriptionLabel.text = ability.description
    }


}


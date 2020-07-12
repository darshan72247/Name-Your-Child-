//
//  NameViewController.swift
//  Name Your Child !
//
//  Created by Yash Patel on 2020-07-12.
//  Copyright © 2020 Darshan Patel. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {
    
    @IBOutlet weak var searchAnotherButton: UIButton!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var gender : String?
    var name : [String]?
    override func viewDidLoad() {
        super.viewDidLoad()
        searchAnotherButton.layer.cornerRadius = 20
        searchAnotherButton.layer.masksToBounds = true
        if gender == "Boy"{
            
            background.image = #imageLiteral(resourceName: "babyBoy")
            name = ["Liam","Noah","William","James",
                    "Oliver","Benjamin","Elijah",
                    "Lucas","Mason","Logan",
                    "Alexander","Ethan","Jacob",
                    "Michael","Daniel","Henry","Jackson",
                    "Sebastian","Aiden","Matthew","Samuel",
                    "David","Joseph","Carter","Owen",
                    "Wyatt","John","Jack","Luke",
                    "Jayden","Dylan","Grayson",
                    "Levi","Isaac"]
            searchAnotherButton.backgroundColor = #colorLiteral(red: 0.9738846421, green: 0.7595831752, blue: 0.8208008409, alpha: 1)
        } else  {
            background.image = #imageLiteral(resourceName: "babyGirl")
            name = ["Meaghan","Dior","Adalee",
                    "Palmer","Oaklynn","Haisley",
                    "Keily","Novah","Yara","Ensley",
                    "Anna","Caroline","Nova",
                    "Genesis","Emilia","Kennedy",
                    "Samantha","Maya","Willow",
                    "Kinsley","Naomi","Aaliyah"]
            searchAnotherButton.backgroundColor = #colorLiteral(red: 0.7787666917, green: 0.9132526517, blue: 0.9544915557, alpha: 1)
        }
        nameLabel.text = name?.randomElement()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func searchAnotherButtonPressed(_ sender: UIButton) {
        nameLabel.text = name?.randomElement()
    }
    
    
}

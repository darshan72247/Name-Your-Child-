//
//  ViewController.swift
//  Name Your Child !
//
//  Created by Yash Patel on 2020-07-12.
//  Copyright © 2020 Darshan Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gender : String?
    @IBOutlet weak var girlButton: UIButton!
    @IBOutlet weak var boyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        girlButton.layer.cornerRadius = 25
        boyButton.layer.cornerRadius = 25
        girlButton.layer.masksToBounds = true
        boyButton.layer.masksToBounds = true
    }

    @IBAction func boyButtonPresses(_ sender: UIButton) {
        gender = sender.currentTitle
        self.performSegue(withIdentifier: "nameWindow", sender: self)
        
    }
    

    @IBAction func girlButtonPressed(_ sender: UIButton) {
        gender = sender.currentTitle
        self.performSegue(withIdentifier: "nameWindow", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nameWindow"{
            let destinationVC = segue.destination as! NameViewController
            guard let babyGender = self.gender else { return }
            destinationVC.gender = babyGender
        }
    }

}


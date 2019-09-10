//
//  ViewController.swift
//  People finder
//
//  Created by Max Rothrock on 9/5/19.
//  Copyright © 2019 Max Rothrock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viewer: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    var index = -1
    var newIndex = -1
    var randomStart = Int.random(in: 0...7)
    
    var peopleFinder = ["Ethan",
                        "Braden",
                        "Kyle",
                        "Reece",
                        "Max",
                        "Jessica",
                        "Sophia",
                        "Jared"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    

    @IBAction func button(_ sender: UIButton) {
        
    if randomStart > peopleFinder.count-1 {
            randomStart = 0
        }
        label.text = peopleFinder[randomStart]
        viewer.image = UIImage(named: "\(randomStart)")
        randomStart += 1
    }


}


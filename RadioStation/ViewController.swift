//
//  ViewController.swift
//  RadioStation
//
//  Created by Heri Susanto on 14/02/21.
//  Copyright © 2021 Heri Susanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationFrequency: UILabel!
    @IBOutlet weak var stationBand: UILabel!
    
    var myStation: RadioStation
    var otherStation: RadioStation
    
    required init?(coder aDecoder: NSCoder) {
        myStation = RadioStation()
        myStation.frequency = 104.7
        myStation.name = "Indah Nurul Hanifah Station"
        
        otherStation = RadioStation()
        otherStation.frequency = 84.7
        otherStation.name = "Heri Susanto Station"
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        if (sender.tag == 1){
            stationName.text = myStation.name
            stationFrequency.text = "\(myStation.frequency)"
            stationBand.text = "FM"
        } else {
            stationName.text = otherStation.name
            stationFrequency.text = "\(otherStation.frequency)"
            stationBand.text = "AM"
        }
        
    }
    
}


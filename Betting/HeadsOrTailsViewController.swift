//
//  RandomHeadsOrTailsViewController.swift
//  Betting
//
//  Created by Wellington Bezerra on 17/08/16.
//  Copyright © 2016 Wellington Bezerra. All rights reserved.
//

import UIKit

class HeadsOrTailsViewController: UIViewController {
    
    override func prefersStatusBarHidden() -> Bool { return true }
    
    
    @IBAction func closeButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBOutlet weak var coinImage: UIImageView!

    
    var vWords: [String] = ["heads","tails"]
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func resultButton(sender: AnyObject) {

        index = randomNumber(0...vWords.count-1)
        let descriptionPhoto = vWords[index]
        
        
        // changes background color according to photo
        switch descriptionPhoto {
        case "heads":
            coinImage.image = UIImage(named: "heads")
            view.backgroundColor = UIColor(red:0.29, green:0.75, blue:0.89, alpha:1.0) //blue
        case "tails":
            coinImage.image = UIImage(named: "tails")
            view.backgroundColor = UIColor(red:1.00, green:0.42, blue:0.42, alpha:1.0) //orange
        default:
            view.backgroundColor = UIColor(red:0.14, green:0.14, blue:0.14, alpha:1.0) //black
        }

        
    }
    
    
}
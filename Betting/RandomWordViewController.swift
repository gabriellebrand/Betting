//
//  RandomWordsViewController.swift
//  Betting
//
//  Created by Wellington Bezerra on 16/08/16.
//  Copyright © 2016 Wellington Bezerra. All rights reserved.
//

import UIKit

class RandomWordViewController: UIViewController, UITextFieldDelegate {
    
    override func prefersStatusBarHidden() -> Bool { return true }
    
    
    @IBAction func closeButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    // dismiss keyboard quando clicar em return
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("TextField should return")
        return true
    }
    

    @IBOutlet weak var newWordLabel: UITextField!
    @IBOutlet weak var randomWordLabel: UILabel!
    
    
    var vWords: [String] = []
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func registerButton(sender: AnyObject) {
        vWords.append(newWordLabel.text!)
        print(newWordLabel.text!)
        newWordLabel.text = ""
    }
    

    @IBAction func randomButton(sender: AnyObject) {
        if (vWords.count > 1) {
        index = randomNumber(0...vWords.count-1)
        print (vWords[index])
        randomWordLabel.text = vWords[index]
        }
        
    }
    
    
    @IBAction func cleanButton(sender: AnyObject) {
        vWords.removeAll()
        randomWordLabel.text = ""
    }
    
}

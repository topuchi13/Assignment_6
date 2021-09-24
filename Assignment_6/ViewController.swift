//
//  ViewController.swift
//  Assignment_6
//
//  Created by Nika Topuria on 24.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    
    var lvlCounter: Int = 0
    var lvlHonorific = [1..<5:("Ordinary", UIColor.systemBlue),
                        5..<10:("Magnificent", UIColor.systemIndigo),
                        10..<15:("Heroic", UIColor.systemPurple),
                        15..<20:("Epic", UIColor.systemPink),
                        20..<50:("Legendary", UIColor.systemOrange),
                        50..<100:("God", UIColor.black)
    ]
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var labelText: UILabel!
    @IBAction func magicButton(_ sender: UIButton) {
        
        
        //*****************************
        labelText.text = textField.text         // დავალება ^_^
        //*****************************
        
        
        lvlCounter += 1
        sender.setTitle("Ordinary Button (lvl \(lvlCounter)", for: .normal)
        lvlHonorific.keys.forEach { myRange in
            if myRange.contains(lvlCounter) {
                sender.setAttributedTitle(NSAttributedString(string: "\(lvlHonorific[myRange]!.0) Button (lvl \(lvlCounter))", attributes: [.font : UIFont.systemFont(ofSize: 20, weight: .bold)]), for: .normal)
                sender.backgroundColor = lvlHonorific[myRange]!.1
            }
            if lvlCounter >= 99 {
                labelText.text = "Button smashing CHAMPION !!!"
            }
        }
    }

}


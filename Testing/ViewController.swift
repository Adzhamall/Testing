//
//  ViewController.swift
//  Testing
//
//  Created by Artemiy Dzhamaldinov on 05.09.18.
//  Copyright © 2018 Artemiy Dzhamaldinov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var count = 0
    
    @IBAction func pressure(_ sender: UIButton) {
        count = count + 1 
        label.text = "кнопка нажата \(count) раз "
        print(count)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowCounterSegue" {
            if let distinationVC = segue.destination as? OtherViewController{
                distinationVC.numberToDisplay = count
            }
        }
    }
/*
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "ShowCounterSegue" {
            if let destinationVC = segue.destination as? OtherViewController {
                destinationVC.numberToDisplay = count
            }
        }

    }
*/
}


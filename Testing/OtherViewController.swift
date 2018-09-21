//
//  OtherViewController.swift
//  Testing
//
//  Created by Artemiy Dzhamaldinov on 16.09.18.
//  Copyright © 2018 Artemiy Dzhamaldinov. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {
    
    var numberToDisplay = 0
    
    @IBOutlet var counterLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    //Используйте этот метод для запуска любых операций, которые должны выполняться до представления содержимого на экране.
    override func viewWillAppear(_ animated: Bool) {
        
        //Эта строка вызывает viewWillAppear своего суперкласса (в данном случае сам UIViewController), если у него есть что-то, что ему нужно сделать
        super.viewWillAppear(animated)
        
        counterLabel.text! = "кнопка нажата \(numberToDisplay) раз "
    }
    
      
    
}

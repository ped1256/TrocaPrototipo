//
//  ViewController.swift
//  TocaDeObjetos
//
//  Created by Pedro Emanuel on 19/10/17.
//  Copyright © 2017 Pedro Emanuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var viewForSwipe: UIView!
    @IBOutlet weak var declineButton: UIButton!
    @IBOutlet weak var acceptButton: UIButton!
    
    var count = 0
    let nomes = ["Pedro", "Joao", "Tiago"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildHome()
    }
    
    func buildHome() {
        
        let gestureRight = UISwipeGestureRecognizer(target: self, action: #selector(declineProduct))
        gestureRight.direction = UISwipeGestureRecognizerDirection.right
        
        let gestureLeft = UISwipeGestureRecognizer(target: self, action: #selector(acceptProduto))
        gestureLeft.direction = UISwipeGestureRecognizerDirection.left
        
        self.acceptButton.addTarget(self, action: #selector(acceptProduto), for: .touchUpInside)
        self.declineButton.addTarget(self, action: #selector(declineProduct), for: .touchUpInside)
        
        self.view.addGestureRecognizer(gestureRight)
        self.view.addGestureRecognizer(gestureLeft)
        
    }
    
    @objc func acceptProduto() {
        // implementar
        
        //        let nome = nomes[count]
        //        textExamples.text = nome
        //        self.count += 1
        
    }
    
    @objc func declineProduct() {
        
    }
}


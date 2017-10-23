//
//  UserAccountViewController.swift
//  TocaDeObjetos
//
//  Created by Pedro Emanuel on 23/10/17.
//  Copyright © 2017 Pedro Emanuel. All rights reserved.
//

import Foundation
import UIKit

class UserAccountViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var imageViewBackGround: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var myProductsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildAccountInfo()
        myProductsTableView.delegate = self
        myProductsTableView.dataSource = self
        myProductsTableView.rowHeight = 170
    }
    
    func buildAccountInfo(){
        self.userImage.layer.cornerRadius = 50
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = self.imageViewBackGround.bounds
        self.imageViewBackGround.addSubview(blurView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "productsOfferCell", for: indexPath) as! MyProductsCell
        return cell
    }
    
}

//
//  detailViewController.swift
//  simpsons
//
//  Created by Asit Aslan on 23.01.2021.
//  Copyright © 2021 Asit Aslan. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var jobLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedSimpson : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLbl.text = selectedSimpson?.name
        jobLbl.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
        
    }
    

  
}

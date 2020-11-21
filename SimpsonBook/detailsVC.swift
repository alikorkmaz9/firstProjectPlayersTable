//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by RIDVAN on 21.11.2020.
//  Copyright © 2020 ridvanmertoglu. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    
    var selectedPlayers : Players?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedPlayers?.name
        teamLabel.text = selectedPlayers?.team
        imageView.image = selectedPlayers?.image
        
        
    }

}

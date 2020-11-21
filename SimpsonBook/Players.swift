//
//  Players.swift
//  SimpsonBook
//
//  Created by RIDVAN on 21.11.2020.
//  Copyright © 2020 ridvanmertoglu. All rights reserved.
//

import Foundation
import UIKit

class Players {
    var name : String
    var team : String
    var image : UIImage
    
    init(playerName: String, playerTeam: String, playerImage: UIImage) {
        name = playerName
        team = playerTeam
        image = playerImage
    }
}

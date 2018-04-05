//
//  Observation.swift
//  Field Survey
//
//  Created by Cody McIlviane on 4/5/18.
//  Copyright © 2018 Cody McIlviane. All rights reserved.
//

import UIKit

enum Classification : String{
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case retile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}

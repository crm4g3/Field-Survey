//
//  Classificaitons.swift
//  Field Survey
//
//  Created by Cody McIlviane on 4/5/18.
//  Copyright © 2018 Cody McIlviane. All rights reserved.
//

import Foundation

struct ClassificationAnimal{
    let classification: Classification
    let title: String
    let description: String
    let date: Date
    
    init(classification: Classification, title: String, description: String, date: Date){
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classification: String, title: String, description: String, date: Date){
        if let classification = Classification(rawValue: classification){
        self.init(classification: classification, title: title, description: description, date: date)
        }else{
            return nil
        }
    }
}

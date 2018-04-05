//
//  ClassificationAnimalJSONLoader.swift
//  Field Survey
//
//  Created by Cody McIlviane on 4/5/18.
//  Copyright © 2018 Cody McIlviane. All rights reserved.
//

import Foundation

class ClassificationAnimalJSONLoader{
    
    class func load(fileName: String) -> [ClassificationAnimal]{
        var classifications = [ClassificationAnimal]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
                classifications = ClassificaionsAnimalJSONParser.parse(data)
        }
        
        return classifications
    }
}

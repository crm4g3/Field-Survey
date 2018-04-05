//
//  ClassificationAnimalJSONParser.swift
//  Field Survey
//
//  Created by Cody McIlviane on 4/5/18.
//  Copyright © 2018 Cody McIlviane. All rights reserved.
//

import Foundation

class ClassificaionsAnimalJSONParser{
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [ClassificationAnimal]{
        var classificationAnimals = [ClassificationAnimal]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok"{
            
            if let observations = root["observations"] as? [Any]{
                for observation in observations{
                    if let observation = observation as? [String: String]{
                        if let observationName = observation["classification"],
                            let title = observation["title"],
                            let description = observation["description"],
                            let dateString = observation["date"],
                            let date = dateFormatter.date(from: dateString){
                            
                            if let classificationAnimal = ClassificationAnimal(classification: observationName, title: title, description: description, date: date){
                                classificationAnimals.append(classificationAnimal)
                            }
                        }
                    }
                }
            }
        }
        
        return classificationAnimals
    }
}

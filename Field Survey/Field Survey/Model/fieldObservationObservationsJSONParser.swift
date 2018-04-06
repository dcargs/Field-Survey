//
//  fieldObservationObservationsJSONParser.swift
//  Field Survey
//
//  Created by Devin Cargill on 4/6/18.
//  Copyright © 2018 Devin Cargill. All rights reserved.
//

import Foundation

class fieldObservationObservationsJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [fieldObservation] {
        var fieldObservations = [fieldObservation]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
           let root = json as? [String: Any],
           let status = root["status"] as? String,
           status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: String]{
                        if let animalName = observation["classification"],
                           let title = observation["title"],
                           let description = observation["description"],
                           let dateString = observation["date"],
                           let date = dateFormatter.date(from: dateString) {
                            
                            if let fieldObservation = fieldObservation(animalName: animalName, title: title, description: description, date: date){
                                fieldObservations.append(fieldObservation)
                            }
                        }
                    }
                }
            }
            
        }
        
        return fieldObservations
    }
    
    
}

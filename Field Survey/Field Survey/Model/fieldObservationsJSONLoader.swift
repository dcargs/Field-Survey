//
//  fieldObservationsJSONLoader.swift
//  Field Survey
//
//  Created by Devin Cargill on 4/6/18.
//  Copyright © 2018 Devin Cargill. All rights reserved.
//

import Foundation

class fieldObservationsJSONLoader {
    
    class func load(fileName: String) -> [fieldObservation] {
        var observations = [fieldObservation]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            observations = fieldObservationObservationsJSONParser.parse(data)
        }
        
        return observations
    }
    
}

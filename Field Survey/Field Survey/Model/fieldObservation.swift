//
//  fieldObservation.swift
//  Field Survey
//
//  Created by Devin Cargill on 4/6/18.
//  Copyright © 2018 Devin Cargill. All rights reserved.
//

import Foundation

struct fieldObservation {
    let animal: Animal
    let title: String
    let description: String
    let date: Date
    
    init(animal: Animal, title: String, description: String, date: Date){
        self.animal = animal
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(animalName: String, title: String, description: String, date: Date){
        if let animal = Animal(rawValue: animalName) {
            self.init(animal: animal, title: title, description: description, date: date)
        } else {
            return nil
        }
    }
    
}

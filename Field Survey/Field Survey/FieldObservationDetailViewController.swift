//
//  FieldObservationDetailViewController.swift
//  Field Survey
//
//  Created by Devin Cargill on 4/6/18.
//  Copyright © 2018 Devin Cargill. All rights reserved.
//

import UIKit

class FieldObservationDetailViewController: UIViewController {
    
    var fieldObservation: fieldObservation?
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var animalIconImageView: UIImageView!
    @IBOutlet weak var classificationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        animalIconImageView.image = fieldObservation?.animal.image
        classificationLabel.text = fieldObservation?.title
        descriptionLabel.text = fieldObservation?.description
        
        if let date = fieldObservation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

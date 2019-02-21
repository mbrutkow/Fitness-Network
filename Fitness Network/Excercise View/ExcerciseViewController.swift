//
//  WorkoutViewController.swift
//  Fitness Network
//
//  Created by Christian Burke on 2/21/19.
//  Copyright © 2019 Michael Rutkowski. All rights reserved.
//

import UIKit

class ExcerciseViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var setsLabel: UILabel!
    @IBOutlet var repsLabel: UILabel!
    
    var excercise = Exercise(exerciseType: "", numberOfReps: 0, numberOfSets: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = excercise.exerciseType
        setsLabel.text = String(excercise.numberOfSets)
        repsLabel.text = String(excercise.numberOfReps)
    }
}

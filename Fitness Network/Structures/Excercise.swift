//
//  Structures.swift
//  Fitness Network
//
//  Created by Christian Burke on 2/20/19.
//  Copyright © 2019 Michael Rutkowski. All rights reserved.
//

import Foundation

public class Exercise { //To be created upon button press and given values by user
    let exerciseType: String
    let numberOfReps: Int
    let numberOfSets: Int
    
    init(exerciseType: String, numberOfReps: Int, numberOfSets: Int) {
        self.exerciseType = exerciseType
        self.numberOfReps = numberOfReps
        self.numberOfSets = numberOfSets
    }
    var next: Exercise? //Points to next exercise
}

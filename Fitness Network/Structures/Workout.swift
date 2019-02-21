//
//  Workout.swift
//  Fitness Network
//
//  Created by Christian Burke on 2/20/19.
//  Copyright © 2019 Michael Rutkowski. All rights reserved.
//

import Foundation

public class WorkOut { //
    
    var title = "WorkOut Name"
    var usersExercises = [Exercise] () //Array holds exercises
    
    init(usersExercises: [Exercise]) {
        self.usersExercises = usersExercises //Need to be able to create empty array
    }
    public func add(exer: Exercise) {
        usersExercises.append(exer)
    }
    //Need to be able to remove and re-adjust array
    
}

//
//  CreateWorkoutCell.swift
//  Fitness Network
//
//  Created by Christian Burke on 2/20/19.
//  Copyright © 2019 Michael Rutkowski. All rights reserved.
//

import UIKit

class CreateWorkoutCell: UITableViewCell {

    var excercise = Exercise(exerciseType: "", numberOfReps: 0, numberOfSets: 0)
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var setsLabel: UILabel!
    @IBOutlet var repsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //This runs when the cell gets loaded
    override func layoutSubviews() {
        nameLabel.text = excercise.exerciseType
        setsLabel.text = String(excercise.numberOfSets) + " sets"
        repsLabel.text = String(excercise.numberOfReps) + " reps"
    }
    
}

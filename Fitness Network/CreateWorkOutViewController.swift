//
//  CreateWorkOutViewController.swift
//  Fitness Network
//
//  Created by Michael Rutkowski on 2/9/19.
//  Copyright © 2019 Michael Rutkowski. All rights reserved.
//

import UIKit

public var firstEntry: Int = 0
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

 public var preWO = [Exercise] ()

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


class CreateWorkOutViewController: UIViewController {
    @IBOutlet var Sets: UITextField! //Input Sets
    @IBOutlet var Reps: UITextField! //Input Reps
    @IBOutlet var ExerciseEntered: UITextField! //What is the difference between weak and strong
    @IBOutlet var ExerciseList: UILabel!
    
    var i: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    var appendStr = ""
    //public var preWO = [Exercise] () //Hold exercises before WorkOut object is created
    
    @IBAction func AddExercise(_ sender: Any) { //Was Any
        let exerciseStr = String(ExerciseEntered.text!) //Should I not unwrap, what does unwrap even mean?
        let reps = Int(Reps.text!) //Get Input
        let sets = Int(Sets.text!)
        let a_exercise:Exercise = Exercise(exerciseType: exerciseStr, numberOfReps: reps!, numberOfSets: sets!) //Create Excercise Object, pass values entered as arguements
        //Append exercise
        preWO.append(a_exercise)
        
        //Workout.append(a_exercise)//Pass exercise into workout object
        Reps.text = "" //Clears text in field
        Sets.text = ""
        //updateDisplay() --> Updates embedded view
    }
    
}

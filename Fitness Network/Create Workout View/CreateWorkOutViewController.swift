//
//  CreateWorkOutViewController.swift
//  Fitness Network
//
//  Created by Michael Rutkowski on 2/9/19.
//  Copyright © 2019 Michael Rutkowski. All rights reserved.
//

import UIKit

class CreateWorkOutViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    public var firstEntry: Int = 0
    var currWorkout = WorkOut(usersExercises: [])
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var Sets: UITextField! //Input Sets
    @IBOutlet var Reps: UITextField! //Input Reps
    @IBOutlet var ExerciseEntered: UITextField! //What is the difference between weak and strong
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    
    @IBAction func AddExercise(_ sender: Any) { //Was Any
        let exerciseStr = String(ExerciseEntered.text!) //Should I not unwrap, what does unwrap even mean?
        let reps = Int(Reps.text!) //Get Input
        let sets = Int(Sets.text!)
        let a_exercise:Exercise = Exercise(exerciseType: exerciseStr, numberOfReps: reps!, numberOfSets: sets!) //Create Excercise Object, pass values entered as arguements
        //Append exercise
        currWorkout.usersExercises.append(a_exercise)
        //Workout.append(a_exercise)//Pass exercise into workout object
        Reps.text = "" //Clears text in field
        Sets.text = ""
        tableView.reloadData()
        //updateDisplay() --> Updates embedded view
    }
    
    
    
    //-----------------------TABLE VIEW FUNCTIONS-----------------
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currWorkout.usersExercises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CreateWorkoutCell
        cell.excercise = currWorkout.usersExercises[indexPath.row]
        return cell
     }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CreateWorkoutCell
        return cell.frame.height
    }
    
}


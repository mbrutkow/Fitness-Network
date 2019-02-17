//
//  CreateWorkOutViewController.swift
//  Fitness Network
//
//  Created by Michael Rutkowski on 2/9/19.
//  Copyright © 2019 Michael Rutkowski. All rights reserved.
//

import UIKit
//import RxSwift
//import RxCocoa
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





public class WorkOut { //Linked List that stores exercises
    //var Exercise //Exercise
    //var * Exercise //Pointer to next exercise
    var title = "WorkOut Name"
    //var head = nil
    //var tail = nil
    //Needs constructor
    public var head: Exercise?
    public var tail: Exercise?
    
    init(head: Exercise, tail: Exercise) {
        self.head = head
        self.tail = tail
    }
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Exercise? {
        return head
    }
    
    public var last: Exercise? {
        return tail
    }
    
    
    public func append(exer: Exercise) { //append()
        
        if (head == nil && tail == nil) {
            head = exer //Set head and tail equal to object if empty
            tail = exer
            //exer.next = nil
        }
        if (head != nil) {
            tail?.next = exer//Create temporary object to hold obj
            tail = exer
        }
    }
    
}


//Needs to happen once, should I put in this PageLoad func
//Default constructor?
class CreateWorkOutViewController: UIViewController {
    @IBOutlet var Sets: UITextField! //Input Sets
    @IBOutlet var Reps: UITextField! //Input Reps
    @IBOutlet var ExerciseEntered: UITextField! //What is the difference between weak and strong
    @IBOutlet var ExerciseList: UILabel!
    
   
    
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
    @IBAction func AddExercise(_ sender: Any) { //Was Any
        let exerciseStr = String(ExerciseEntered.text!) //Should I not unwrap, what does unwrap even mean?
        let reps = Int(Reps.text!) //Get Input
        let sets = Int(Sets.text!)
        var a_exercise:Exercise = Exercise(exerciseType: exerciseStr, numberOfReps: reps!, numberOfSets: sets!) //Create Excercise Object, pass values entered as arguements
        firstEntry += 1 //Increment
        if(firstEntry < 2) {
            var usersWO:WorkOut = WorkOut(head: a_exercise, tail: a_exercise) //Create workout object upon first exercise entry and give it the first exercise
        }
        //Append exercise
        usersWO.append(a_exercise)
        //Workout.append(a_exercise)//Pass exercise into workout object
        Reps.text = "" //Clears text in field
        Sets.text = ""
    }
    //Button sends user to next page to finialize workout
    //Need to find a way to allow user to name the instance of an object themselves
    //Workout object needs to be an array or linked list of exercise objects
}

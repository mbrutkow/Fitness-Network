//
//  WOListViewController.swift
//  Fitness Network
//
//  Created by Michael Rutkowski on 2/16/19.
//  Copyright © 2019 Michael Rutkowski. All rights reserved.
//

//Need to create global object that prints for me. Object will contain print function and won't run until it has atleast one value
import UIKit

class WOListViewController: UIViewController {
    //Need to call function from other view controller
    var printList: Int = preWO.count - 1
    var index: Int = 0
    
    public func updateDisplay(exList: [Exercise]) {
        for index in 0...printList { //Print button on screen
            
        }
        }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
 

}
*/
}

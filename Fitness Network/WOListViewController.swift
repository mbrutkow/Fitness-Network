//
//  WOListViewController.swift
//  Fitness Network
//
//  Created by Michael Rutkowski on 2/16/19.
//  Copyright © 2019 Michael Rutkowski. All rights reserved.
//

import UIKit

class WOListViewController: UIViewController {
    
    public func read() -> Bool { //Iterate through object
        var tmp: Exercise?
        tmp = usersWO.head
        while (tmp != nil) {
            tmp = tmp?.next //
        }
    }
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

}

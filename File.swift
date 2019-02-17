//
//  File.swift
//  Fitness Network
//
//  Created by Michael Rutkowski on 2/16/19.
//  Copyright © 2019 Michael Rutkowski. All rights reserved.
//

import Foundation
func createButton () {
    while(iterate through list) { //Each exercise create button
    let button = UIButton();
    button.setTitle("\(Exercise) \(Sets) x \(Reps) ", for: .normal)
    button.setTitleColor(UIColor.blue, for: .normal)
    button.frame = CGRect(x: 15, y: variable, width: 200, height: 100)
    self.view.addSubview(button)
}
//Y coordinate should vary, 125. This will provide whitespace between buttons

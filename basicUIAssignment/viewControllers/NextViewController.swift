//
//  NextViewController.swift
//  basicUIAssignment
//
//  Created by Aung Ko Ko on 7/31/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
  static let identifier = "NextViewControllerID"
    
    @IBOutlet weak var lblDOB: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    
    var dob : String = ""
    var selectedGender : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDOB.text = dob
        
        switch selectedGender {
        case 0:
            lblGender.text = "Male"
            break
        case 1:
            lblGender.text = "Female"
            break
        default:
            break
        }
    }
}

//
//  ViewController.swift
//  basicUIAssignment
//
//  Created by Aung Ko Ko on 7/31/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfDOB: UITextField!
    
    var datePicker : UIDatePicker?
    var selectedGender : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        
        datePicker?.addTarget(self, action: #selector(selectedDatePicker(datePicker:)), for: .valueChanged)
        tfDOB.inputView = datePicker
    }
    
    @objc func selectedDatePicker(datePicker:UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        tfDOB.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    @IBAction func scGender(_ sender: UISegmentedControl) {
        selectedGender = sender.selectedSegmentIndex
        
    }
    
    
    
    @IBAction func btnRegister(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: NextViewController.identifier) as! NextViewController
        vc.dob = tfDOB.text ?? ""
        vc.selectedGender = selectedGender
        
        self.present(vc, animated: true, completion: nil)
        
    }
    
    
}


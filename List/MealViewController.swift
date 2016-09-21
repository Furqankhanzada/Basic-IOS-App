//
//  MealViewController.swift
//  List
//
//  Created by Furqan Khanzada on 19/09/2016.
//  Copyright © 2016 Furqan Khanzada. All rights reserved.
//

import UIKit

class MealViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var nameLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        nameLable.text = textField.text
    }
    
    // MARK: Actions
    @IBAction func submitForm(_ sender: AnyObject) {
        nameLable.text = "Default Text"
    }
    
}


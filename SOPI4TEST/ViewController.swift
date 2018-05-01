//
//  ViewController.swift
//  SOPI4TEST
//
//  Created by kuku_eri@yahoo.com on 5/1/18.
//  Copyright © 2018 kewser. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var CaregiveName: UITextField!
      var reference: DatabaseReference?
    
    @IBAction func Skickabuttom(_ sender: Any) {
         reference?.child("Result").setValue(CaregiveName.text);
        print(CaregiveName.text)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         reference = Database.database().reference()
        CaregiveName.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }

}


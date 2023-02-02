//
//  FormViewController.swift
//  BitcodeEnquiry
//
//  Created by Sejal on 01/02/23.
//

import UIKit

class FormViewController: UIViewController {

    // Closure declaration ***********
    var studentInfo : ((Student)->Void)?
  
    var firstname = ""
    var lastname = ""
    var phoneNumber = ""


    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!


    @IBAction func SaveButton(_ sender: Any) {
        
        firstname = nameTextField.text!   //extract value from txtfld
        lastname = LastNameTextField.text!
        phoneNumber = phoneNumberTextField.text!
        var studentObject = Student.init(firstName: firstname,lastName: lastname, phoneNumber: Int(phoneNumber)!)  //studentobject
        studentInfo?(studentObject)  //closure call
        navigationController?.popViewController(animated: true)

    }
}

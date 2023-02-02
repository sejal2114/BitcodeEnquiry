//
//  Courses.swift
//  BitcodeEnquiry
//
//  Created by Sejal on 01/02/23.
//

import Foundation
import UIKit

class CourseViewController : UIViewController {
    
    var courseName: String = ""
    
    override func viewDidLoad() {
        
        if courseName == "iOS" {
            courseInfoLable.text = "iOS Development Course is among the most sought after courses today to learn which includes research, detection, assessment and analyzing the codes. It is a very popular course in Computer Science and Programming,iOS Programming.iOS Developers learn how to master the art of developing apps for Apple Products. This course is suitable for the candidates who wish to become an iOS Developer or pursue research in the future."
            
        } else if courseName == "Android" {
            courseInfoLable.text = "Andriod Description"
        } else {
            courseInfoLable.text = "invalid data"
        }
        
    }
    
    @IBOutlet weak var courseInfoLable: UITextView!
   
    
    @IBAction func navigateToEnquiry(_ sender: Any) {
        
        let navigate = (self.storyboard?.instantiateViewController(withIdentifier: "StudentListViewController") as? StudentListViewController)!
          navigationController?.pushViewController(navigate, animated: true)
    }
}


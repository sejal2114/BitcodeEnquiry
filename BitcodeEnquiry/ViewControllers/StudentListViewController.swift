//
//  StudentListViewController.swift
//  BitcodeEnquiry
//
//  Created by Sejal on 01/02/23.
//

import UIKit

class StudentListViewController: UIViewController {

    /*
     Table view steps
     1. Add delegates
     2. Assign delegates with self
     3. Return no of rows
     4. Create tableview cell. Swift and XIB
     5. Register cell
     6. Return cell from delegate method
     */
    @IBOutlet weak var studentTableView: UITableView!
     
    var studentsArray : [Student] = []   //array of stuct
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //register xib
        let nib = UINib(nibName: "StudentTableViewCell", bundle: nil)
    studentTableView.register(nib, forCellReuseIdentifier: "StudentTableViewCell")
        
        studentTableView.delegate = self
        studentTableView.dataSource = self
        
    }
    
    @IBAction func addButton(_ sender: Any) {
        let formViewController = (self.storyboard?.instantiateViewController(withIdentifier: "FormViewController") as? FormViewController)!
        
//        var studentInfo : ((Student, Int)->Void)? //declaration
//        formViewController.studentInfo = { student, rollNumber in

        formViewController.studentInfo = { student in //xyz is reference name
            self.studentsArray.append(student)
            self.studentTableView.reloadData()
            print("Name: \(student.firstName) Lastname: \(student.lastName)")    //closure listen --> call back
        }
        navigationController?.pushViewController(formViewController, animated: true)
    }
    
    
}

extension StudentListViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return studentsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard var cell = tableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell? else { return UITableViewCell () }
        
        let student = studentsArray[indexPath.row]   // get student from array using index
        cell.firstNameLable.text = student.firstName
        cell.lastNameLable.text = student.lastName
        cell.phoneNumberLable.text = "\(student.phoneNumber)"
        return cell
    }
}


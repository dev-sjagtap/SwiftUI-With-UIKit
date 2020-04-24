
import UIKit
import SwiftUI

class StudentListTableViewController: UITableViewController {
    
    private var students: [Student] = Student.all()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Student List"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let student = students[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath)
        
        cell.textLabel?.text = "Name: \(student.name)"
        cell.detailTextLabel?.text = "Id: \(student.id)"

        return cell
    }
    
    // MARK: - Segue action

    @IBSegueAction func showDetails(_ coder: NSCoder) -> UIViewController? {
        guard let indexpath = self.tableView.indexPathForSelectedRow else {
            fatalError("Indexpath is not defined")
        }
        let student = students[indexpath.row]
        let studentDetailsView = StudentDetailsView(student: student)
        return UIHostingController(coder: coder, rootView: studentDetailsView)
    }
}

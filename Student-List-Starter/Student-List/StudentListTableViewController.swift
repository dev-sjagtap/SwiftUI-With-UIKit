
import UIKit

class StudentListTableViewController: UITableViewController {
    
    let students: [Student] = Student.all()

    override func viewDidLoad() {
        super.viewDidLoad()
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath)
        
        cell.textLabel?.text = "Name: \(students[indexPath.row].name)"
        cell.detailTextLabel?.text = "Id: \(students[indexPath.row].id)"

        return cell
    }

}


import Foundation
import SwiftUI

struct StudentDetailsView: View {
    
    let student: Student
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Student Id: \(student.id)")
                .foregroundColor(Color.gray)
            Text("Student Name: \(student.name)")
                .foregroundColor(Color.green)
        }.padding(10)
    }
    
}

#if DEBUG
struct StudentDetailsView_Preview: PreviewProvider {
    static var previews: some View {
        StudentDetailsView(student: Student(id: 1, name: "Franklin"))
    }
}
#endif

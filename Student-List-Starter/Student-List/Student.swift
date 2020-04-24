
import Foundation

struct Student {
    
    let id: Int
    let name: String
    
}

extension Student {
    
    static func all() -> [Student] {
        return [
            Student(id: 1, name: "James Martin"),
            Student(id: 2, name: "Mary Clark"),
            Student(id: 3, name: "Kevin Moon"),
            Student(id: 4, name: "Cheris King"),
            Student(id: 5, name: "Ross Jacob")
        ]
    }
    
}

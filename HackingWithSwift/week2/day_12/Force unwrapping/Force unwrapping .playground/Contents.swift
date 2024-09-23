import Foundation

func chipsFlovors() -> String? {
    let str = "5"
    let num = Int(str)!
    return nil
}

func years(_age: Int?) -> Int {
    let age = "24"
    guard let myAge = Int(age) else {
        print("Hello")
        return 22
    }
    return 0
}

func getInfoAboutSalary() -> String? {
    
    let salary = 100
    let strSalary: String = String(salary)
    
    if salary < 150 {
        print("It's bad sallary")
        return nil
    } else {
        print("It's good salary")
        return strSalary
    }
}

if let salaryInfo: String = getInfoAboutSalary() {
    print("Salary info: \(salaryInfo)")
} else {
    print("No salary information available.")
}


func web(_ page: String?) {
    let url = URL(string: "https://chatgpt.com")!
    guard let unwrapped = page else {
        print("Need connect to this page: \(url)")
        return
    }
}


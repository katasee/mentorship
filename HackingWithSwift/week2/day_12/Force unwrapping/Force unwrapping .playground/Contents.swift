import Foundation
    
    func сonvertNum() {
        let str = "5"
        let num = Int(str)
        if let num = num {
            print("Hello")
        }
        guard let num = num else { return }
        print(num)
    }
    
    func сonvertAge() {
        let age = "24"
        let myAge = Int(age)
        if let myAge = myAge {
            print("My age")
        }
        guard let myAge = myAge else { return }
        print(myAge)
    }
    
    func сonvertSalary() {
        let salary: Int? = 100
        let strSalary = (salary)
        if let strSalary = strSalary {
            print("My salary")
        }
        guard let strSalary = strSalary else { return }
        print(strSalary)
    }


func сonvertUrl () {
    let url = URL(string: "https://chatgpt.com")
    if let url = url {
        print(url)
    }
    guard let url = url else { return }
    print(url)
}


func person(_ age: Int?) {
    guard let unwrapped = age else {
        print("You must to write your age")
        return
    
}
print ("Hi, \(unwrapped)")
}

func job(_ firm: String?) {
    guard let favourite = firm else {
        print("You need to send your CV")
        return
    }
print("If you want to apply \(favourite)")
}

var myUsername: String?
var myPassword: String?

myPassword = "123123"
myUsername = "Vidro"

func logIn () {
    guard let myUsername = myUsername else { return }
    }
print("my login is \(myUsername)")
logIn()

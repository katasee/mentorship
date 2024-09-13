struct Device {
    var serialNumber = "323knakn1"
    
    init() {
        self.serialNumber = "323knakn1"
    }
}

struct User {
    var username: String
    
    
    init() {
        username = "Anonymous"
        print("Creating a new users!")
    }
}
var user = User()
user.username = "twostraws"

struct Car {
    let brand: String
    let color: String
    init(brand: String, color: String) {
        self.brand = brand
        self.color = color
    }
}

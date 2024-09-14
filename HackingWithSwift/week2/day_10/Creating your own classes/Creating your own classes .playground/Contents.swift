class Crypto {
    var name: String
    var price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}
let bitcoin = Crypto(name: "Bitcoin", price: 55000)

class ApplePresentation {
    var device: String
    var price: Int
    
    init(device: String, price: Int) {
        self.device = device
        self.price = price
    }
}
let apple = ApplePresentation(device: "iPhone16", price: 1000)

class category {
    var name1: String
    var name2: String
    var name3: String
    
    init(name1: String, name2: String, name3: String) {
        self.name1 = name1
        self.name2 = name2
        self.name3 = name3
    }
}
let fruits = category(name1: "banan", name2: "apple", name3: "pineapple")

protocol Burger {
    var type: String { get }
    var numberOfСutlet: Int { get }
    
    func cook() -> String
}
class myBurger: Burger {
    let type = "Meet burger"
    let numberOfСutlet = 2
    
    func cook() -> String {
        "We are cooking \(type) with \(numberOfСutlet)"
    }
}

let orderBurger = myBurger()
orderBurger.cook()

protocol House {
    var city: String { get }
    var price: Int { get }
}
struct Option1: House {
    var city: String
    var price: Int
    var district: String
}
struct Option2: House {
    var city: String
    var price: Int
    var square: Int
}
func buy(_ home: House) {
    print("I'm buying house in \(home.city) for \(home.price)$")
}

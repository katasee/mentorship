class Category {
    var product: String
    var price: Int
    
    init(product: String, price: Int) {
        self.product = product
        self.price = price
    }
}
class Fruits: Category {
    init(product: String) {
        super.init(product: product, price: 2)
    }
}

class FootballTeam {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Game: FootballTeam {
    var isWinning: Bool
    init(isWinning: Bool) {
        self.isWinning = isWinning
        super.init(name: "Dynamo")
    }
}

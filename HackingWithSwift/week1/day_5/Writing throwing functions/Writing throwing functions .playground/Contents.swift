enum priceError : Error {
    case  ETH
}
func checkPrice (_ price: Int) throws ->Bool {
    if price == 5000 {
        throw priceError.ETH
    }
    return true
}

enum burgerError : Error {
    case noMeat
    case noBread
}
func makeBurger (type: String) throws {
    if type == "Vega burger" {
        print("Your burger will be ordering in 15 minutes")
    } else {
        throw burgerError.noMeat
    }
}

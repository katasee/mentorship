enum transactionError: Error {
    case noMoney
}

func makeTransaction (balance: Int) throws -> Bool {
    if balance <= 100 {
        throw transactionError.noMoney
    }
    
    return true
}

do {
    try makeTransaction(balance: 99)
    print("transaction success")
} catch {
    print("You don't have money for this transaction")
}

if let result = try? makeTransaction(balance: 99) {
    print("Result was \(result)")
} else {
    print("Error")
}

enum priceError: Error {
    case invalidPrice
}

func buyProducts (_ price: String) throws -> Int {
    guard let dollars = Int(price) else {
        throw priceError.invalidPrice
    }
    
    return dollars
}

let resault = try? buyProducts("100")
let nilResault = try? buyProducts("sto")

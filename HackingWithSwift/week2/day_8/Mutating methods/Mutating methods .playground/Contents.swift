struct Apple {
    var date: Int
    
    mutating func presentation() {
        date = 8
    }
}
var apple = Apple(date: 9)
apple.presentation()
print(apple)

struct Telegram {
    var update: String
    
    mutating func function () {
        update = "telegram Premium"
    }
}
var telegram = Telegram(update: "stars for donate")
telegram.update
print(telegram)

struct Investition {
    var stocks: String
    var price: Int
    
    mutating func updatePrice() {
        price = 200
    }
}
var investition = Investition(stocks: "AAPL", price: 220)
investition.price
print(investition)

struct BankAccount {
    var balance : Int
    mutating func payForFood(amout: Int){
        balance = 1200
        balance -= amout
    }
}
var updateBankAccount = BankAccount(balance: 1000)
updateBankAccount.balance
print(updateBankAccount)


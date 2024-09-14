class Work {
    func takeAShift() {
        print("We don't have Shift at Monday")
    }
}
class OpenShift: Work {
    override func takeAShift() {
        print("Open shift at Monday available")
    }
}
let scoober = OpenShift()
scoober.takeAShift()

class BuyProducts {
    func payment() {
        print("In your card not enough money")
    }
}
class creditCard: BuyProducts {
    override func payment() {
        print("payment was successful")
    }
}
let cardWithMoney = creditCard()
cardWithMoney.payment()

class Balance {
    func checkBankAccount() {
        print("In your bank account 10$")
    }
}
class salaryDay: Balance {
    override func checkBankAccount() {
        print("In your bank account 1000$")
    }
}
let salary = salaryDay()
salary.checkBankAccount()

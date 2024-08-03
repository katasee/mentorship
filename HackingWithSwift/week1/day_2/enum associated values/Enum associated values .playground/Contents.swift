enum USDTtransaction {
    case sent (amount: Double, toAdres: String)
    case received (amount: Double, fromAdres: String)
}
let senttransaction = USDTtransaction.sent(amount: 100, toAdres: "1aq133wwqw1")

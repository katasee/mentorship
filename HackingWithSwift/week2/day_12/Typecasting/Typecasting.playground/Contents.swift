class Sport { }
class Football: Sport { }

class Boks: Sport {
    func doSport () {
        print("after sport, I have a lot of energy")
    }
}
let sports = [Football(), Boks(), Football(), Boks()]
for sport in sports {
    if let boks = sport as? Boks {
        boks.doSport()
}
}

class Pay  { }
class ApplePay: Pay {
    var cardNr = 172883992193
}
class Blik: Pay {
    var blikNr = 1381389
}

let applePay = ApplePay()
let blik = Blik()
let paymentMethod = [applePay, blik]

for pay in paymentMethod {
    if let applePay = pay as? ApplePay {
        print("I'm pay using \(applePay.cardNr)")
    } else if let blik = pay as? Blik {
        print("I'm using \(blik.blikNr)")
    }
}


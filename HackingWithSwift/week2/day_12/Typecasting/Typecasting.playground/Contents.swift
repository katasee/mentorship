class Sport { }
class Football: Sport { }
class Boks: Sport {
    func doSport () {
        print("after sport, I have a lot of energy")
    }
}

let sports: [Sport] = [Football(), Boks(), Football(), Boks()]
for sport in sports {
    if let boks: Boks = sport as? Boks {
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

let applePay: ApplePay = ApplePay()
let blik: Blik = Blik()
let paymentMethod: [Pay] = [applePay, blik]

for pay in paymentMethod {
    if let applePay: ApplePay = pay as? ApplePay {
        print("I'm pay using \(applePay.cardNr)")
    } else if let blik = pay as? Blik {
        print("I'm using \(blik.blikNr)")
    }
}


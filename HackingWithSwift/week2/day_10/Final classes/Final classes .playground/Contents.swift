final class BestCourier {
    var name: String
    var iD: Int
    
    init(name: String, iD: Int) {
        self.name = name
        self.iD = iD
    }
}

final class Wallet {
    var adress: String
    
    init(adress: String) {
        self.adress = adress
    }
}

final class UsdtTransaction {
    var wallet: String
    
    init(wallet: String) {
        self.wallet = wallet
    }
}

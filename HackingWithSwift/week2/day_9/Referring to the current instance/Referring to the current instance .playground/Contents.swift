struct Telegram {
    var firstNewFunction : String
    var secondNewFunction : String
    init(firstNewFunction: String, secondNewFunction: String) {
        print("In a new update of telegram we have \(firstNewFunction) and \(secondNewFunction)")
        self.firstNewFunction = firstNewFunction
        self.secondNewFunction = secondNewFunction
    }
}

struct language {
    var native : String
    var begginer : String
    init(native: String, begginer: String) {
        self.native = native
        self.begginer = begginer
    }
}

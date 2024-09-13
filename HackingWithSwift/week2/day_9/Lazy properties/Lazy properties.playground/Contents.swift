struct Football {
    init() {
        print ("Creating football team")
    }
}

struct footballer {
    var name: String
    lazy var football = Football()
    
    init(name: String) {
        self.name = name
    }
}

var Messi = footballer(name: "Leo")
Messi.football

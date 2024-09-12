struct Footballer {
    static var playerInTeam = 22
    var name: String
    
    init(name: String) {
        self.name = name
        Footballer.playerInTeam += 1
    }
}
print(Footballer.playerInTeam)

struct Inst {
    static let instURL = "https://www.instagram.com/kotaliov/?locale=ru&hl=am-et"
}
print(Inst.instURL)

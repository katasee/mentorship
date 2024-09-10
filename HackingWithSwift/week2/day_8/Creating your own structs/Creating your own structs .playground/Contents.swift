struct Crypto {
    var name: String
}
var BTC = Crypto(name: "BTC")
print(BTC.name)
BTC.name = "Bitcoin"
print(BTC.name)

struct Anton {
    var names: String
    var age: Int
    var height: Double
}
var me = Anton(names: "Anton", age: 24, height: 1.82)
me.names = "my name is Anton"
print(me.names)

struct Weeding {
    var date: Double
    var place: String
}
let ceremony = Weeding(date: 19.09, place: "Italy")

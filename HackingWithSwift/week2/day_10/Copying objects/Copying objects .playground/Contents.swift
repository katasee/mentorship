class FootballPleyer {
    var name = "Artem Milevskiy"
}
var footballPlayer = FootballPleyer()
print(footballPlayer.name)
var footballPlayerCopy = footballPlayer
footballPlayer.name = "Andriy Shevchenko"
print(footballPlayer.name)

class Balance {
    var account = 100
}
var balance = Balance()
print(balance.account)
var balanceCopy = balance
balance.account = 1000
print(balance.account)

class Assortment {
    var ananas = "availible"
}
var assortment = Assortment()
print(assortment.ananas)
var assortments = assortment
assortments.ananas = "unavailable"
print(assortment.ananas)

class language {
    var speekEnglish = false
}
var friend = language()
var wife = friend
friend.speekEnglish = true
print(friend.speekEnglish)
print(wife.speekEnglish)

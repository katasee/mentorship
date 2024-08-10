var name: String = "Anton"
name = "Igor"
print(name)

let surname: String = "Klyk"
let cryptoNamed: String = "Farshmak"
let targetPrice: Int = 2
var todayPrice: Int = 1
var yesterdayPrice: Double = 1.25
let putinHuilo: Bool = true
let grassIsBlue = false
let windowsBetterThanMac: Bool = false
var myFirmCalled: String = "Lisek"
var bookIsCalled: String = "ItMaster"

let crypto: [String] = ["Btc", "Eth", "Sol"]
let courierStatus: [String] = ["Gold", "Silver", "Black"]
let colours: [String] = ["orange", "black", "white"]
let numbersArray: [Int] = [99, 666, 6663629]

let carboranaRecipe: [String : Int] = [
    "beacon" : 250,
    "pasta" : 100,
    "garlik" : 1,
    "eggs" : 2,
    "parmegano" : 30,
]
let resault: String = surname + " " + name
print(resault)
let RandomWord: String = cryptoNamed + surname
let gorilka: Double = 0.5
let piwo: Double = 1.5
let Alco = gorilka + piwo

let firstIng: String = "Whiskey "
let secondIng: String = "Lemon juice "
let thirdIng: String = "Water "
let fourIng: String = "Sugar "
let fiveIng: String = "Ice"
let whiskeySour: String = firstIng + secondIng + thirdIng + fourIng + fiveIng

let time: String = "two "
let text: String = "My expirience in "
let job: String = "IT "
let message = text + job + time + "week"
print(message)

let year: Int = 2024
let born: Int = 2000
let myAge: Int = year - born

var book: String = "Churchill factor "
var pages: Int = 350
var cycle: String = "three month "
"I read \(book) wich has \(pages) pages for a \(cycle)"

var Tokio: Int = 2021
var Paris: Int = 2024
let firstMedal: String = "silver"
let secondMedal: String = "gold"
let named: String = "Oleksandr Khyzhniak"
"Ukrainian boxer \(named) win his \(firstMedal) medal at \(Tokio), and now win \(secondMedal) at \(Paris). It's like a \(Paris - Tokio) years beetwen this medal"

var number: [Int] = [9,3,666,1]
print("best number:\(number)")
var alexBestNr:[Int] = [Int]()
print(number [2])

print("Before Append: \(number)")
// using append method
number.append(32)
print("After Append: \(number)")

var primeNumbers = [2, 3, 4]
var evenNumbers = [4, 6, 8]
// join two arrays
primeNumbers.append(contentsOf: evenNumbers)
print("Array after append: \(primeNumbers)")

var names: [String] = ["Anton", "Andrii", "Vlad"]
names.insert("Ivan", at:2)
print(names)
names[1] = "Nazarii"
print(names)
names.remove(at: 0)
print(names)
let delName = names.remove(at:2)
print("delName: \(delName)")

let mySalary = [Int]()
var result = mySalary.isEmpty

var adress: [Any] = ["Okopowa", 18]
print(adress)

var courierId : Set<Int> = [111222, 1, 4, 11233415, 211116,]
var studentID : Set<String> = ["two", "five", "eight",]
var pickerId : Set<Int> = [11212, 1, 1211212, 4, 12131312]
print ("together: ", pickerId.union(courierId))
print("Intersection :", courierId.intersection(pickerId))
print("Subtrating :", courierId.subtracting(pickerId))
var setA: Set<Int> = [1,2,5,6]
var setB: Set<Int> = [6,5,3]
print("Subset ", setB.isSubset(of: setA))

if setA == setB {
    print("Set A and set B are equal")
}
else {
    print("Set A and Set B are different")
}
var cryptoCatergories = ["Memes" : "Pepe", "AI" : "INJ", "DeFi": "AVAX"]
cryptoCatergories["Wallet"] = "TWT"
print(cryptoCatergories)
cryptoCatergories["Memes"] = "Doge"
print(cryptoCatergories)
var categories = Array(cryptoCatergories.keys)
print("Keys: ", categories)
var title = Array(cryptoCatergories.values)
print("Value: ", title)
var removeValue = cryptoCatergories.removeValue(forKey: "DeFi")

var product = ("Bitcoin", 50000)
print("product:", product.0)
print("price:", product.1)
product.1 = 60000
print("new Price:", product.1)

var company = (product: "Lisek App", version: 5.2)
company.product

var status = ("Silver", "Gold", "Black", ("silver", "gold", "black"))
print(status.0)
print(status.3.2)

//Dictionary Inside a Tuple
var cryptoGit = ("ETH", 3500, ["SOL": 380, "TON": 10, "BNB": 1000])
cryptoGit.2["TWT"] = 1
print(cryptoGit.2)

let age = 17
if (age > 18) {
  print("You may drink alco")
}
else {
    print("You can't drink alco")
}
print("Have a nice day")

let nr = 0
if (nr > 0) {
    print("it's False")
}
else if (nr < 0) {
    print("it's True")
}
else {
    print("zero")
}
print("chotko")

//Tuple in Switch
let info = ("BTC", 60000)
switch info {
case ("ETC", 3000):
    print("Today price of ETH it's 3000")
    
case ("Ltc", 50000):
    print("Today price of BTC it's 50000")
    
case("BTC", 60000):
    print("Today price of BTC it's 60000")
default:
    print("Price not available for the given cryptocurrency.")
}

func buyCrypto(crypto: (String) -> String) {
    print("I want buy some crypto")
    let targetCrypto = crypto("ETH")
    print("I buy it")
}
buyCrypto { (name: String) -> String in
return "When \(name) will be coast 1000$ I will byu it"
}

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    var current = values[0]
    for value in values [1...]{
        current = closure(current, value)
    }
    return current
}

let numbers = [10, 20, 30]
let sum = reduce(numbers) { (runningTotal: Int, next: Int) in runningTotal + next
}
print(sum)

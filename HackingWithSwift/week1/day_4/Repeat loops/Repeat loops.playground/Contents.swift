var number = 5
repeat{
    print(number)
    number += 1
} while number <= 20
print("Obema boy, ma big my boss")

var pages = 5
repeat{
    print(pages)
    pages += 1
} while pages <= 20
print("Hello")

let numbers = [1, 2, 3, 4, 5]
var random: [Int]
repeat {
    random = numbers.shuffled()
} while random == numbers

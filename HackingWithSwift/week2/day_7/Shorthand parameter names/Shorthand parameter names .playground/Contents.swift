func day(aftermoon: (String) -> String) {
    print("At the morning, I get up and going to work")
    let afterWork = aftermoon("I'm going to the gym")
    print(afterWork)
}
day {
     "After work \($0)"
}


var operation: (Double) -> Double
operation = {-$0}
let result = operation(-3.0)
print(result)

var years: (Int) -> Int
years = {$0}
let year = years (2024-2000)
print("I'm \(year) years old")

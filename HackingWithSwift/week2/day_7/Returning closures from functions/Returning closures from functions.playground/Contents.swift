print(Int.random(in: 1...10))
func getRandomNumber()-> Int {
    Int.random(in: 1...10)
}
print(getRandomNumber())
func makeRandomGenerator() -> () -> Int {
    let function = { Int.random(in: 1...10) }
    return function
}
let generator = makeRandomGenerator()
let random1 = generator()
print(random1)

func bank() -> (String) -> Void {
    return {
        print("I'm going to the \($0) bank")
    }
}
let named = bank()
named("PKO")

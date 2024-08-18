func makeBurger(bread: Int, meat: inout Int, chease: Int) {
    meat *= 2
}
var people = 3
makeBurger(bread: 2, meat: &people, chease: 6)

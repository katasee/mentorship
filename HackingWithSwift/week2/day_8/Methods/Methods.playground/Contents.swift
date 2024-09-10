struct present {
    var people: Int
    
    func collectMoney() -> Int {
        return people * 500
    }
}
let invitedPeople = present(people: 15)
invitedPeople.collectMoney()

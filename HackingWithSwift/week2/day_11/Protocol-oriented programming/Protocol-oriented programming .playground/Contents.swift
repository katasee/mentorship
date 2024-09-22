protocol Identifiable {
    var id: Int { get set }
    func identify()
}
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable {
    var id: Int
}

let courier = User(id: 36611)
courier.identify()



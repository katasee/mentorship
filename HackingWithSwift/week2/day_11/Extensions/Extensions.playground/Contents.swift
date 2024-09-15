protocol User {
    func login()
}
extension User {
    func login() {
        print("SpanchBob")
    }
}

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

struct Courier {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    func identify() -> String {
        return "My courier number is \(id)"
    }
}

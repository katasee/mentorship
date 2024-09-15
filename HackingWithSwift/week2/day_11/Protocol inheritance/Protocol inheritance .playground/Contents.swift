protocol Couriers {
    var salary: Int { get }
}
protocol Pickers {
    var salary: Int { get }
    var workDay: Int { get }
}
protocol OfficeWorkers {
    var salary: Int { get }
    var vacationDay: Int { get }
}
protocol LisekWorkers: Couriers, Pickers, OfficeWorkers {}

protocol Monday {
    var promotion: String { get set }
}
protocol Tuesday {
    var discount: String { get set }
}
protocol Sunday {
    var freeDelivery: String { get set }
}
protocol planOnAWeek: Monday, Tuesday, Sunday {}

protocol Binance {
    func stake() -> String
}
protocol Bybit {
    func buyCrypto() -> String
}
protocol Okx {
    func trade() -> String
}
protocol cryptoExchange: Binance, Bybit, Okx {}

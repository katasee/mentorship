struct Drivers {
    var season: String
    var amout: Int {
        didSet {
            print("at the \(season) we have \(amout)  couriers")
        }
    }
}

var drivers = Drivers(season: "autumn", amout: 600)
drivers.amout = 650
drivers.season = "summer"
drivers.amout = 500
drivers.season = "winter"
drivers.amout = 700


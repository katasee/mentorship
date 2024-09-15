class ApplePresentation {
    var product1 = "iPhone"
    var product2 = "Apple Watch"
    init() {
        print("\(product1) coast 1000$, \(product2) coast 500$")
    }
    deinit {
        print("20.09 \(product1) will be able in Warsaw Apple store")
    }
}

class Film {
    deinit {
        print("The end")
    }
}

class Lisek {
    deinit{
        print("Job is finish")
    }
}

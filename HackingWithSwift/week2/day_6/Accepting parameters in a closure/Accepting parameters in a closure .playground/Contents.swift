let country = { (place: String) in
    print("I'm living in \(place)")
}
country("Poland")

let device = { (phone: String) in
    print("My favorite Apple device it's \(phone)")
}
device("iPhone")

let crypto = { (type: String, price: Int) in
    print("Today we pay \(price)$ for \(type)")
}
crypto("ETH", 2600)

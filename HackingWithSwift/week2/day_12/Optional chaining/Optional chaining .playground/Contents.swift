let products = ["milk", "eggs", "bread"]
let availible = products.last?.uppercased()

let crypto = ["LTC": "Litecoin", "BTC": "Bitcoin", "ETH": "Etherium"]
let fullname = crypto["LTC"]?.first?.uppercased() ?? "?"

let task: [String] = [String]()
let task1 = task.first?.uppercased()

let favouriteFirm = ["Anton": "Apple", "Olek": "Samsung"]
let olekFirm = favouriteFirm["Olek"]?.lowercased()

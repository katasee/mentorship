func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5)

func BTC(price: Int..., date: Int...) {
    for (p,d) in zip(price, date)  {
            print("Bitcoin coast \(p)$ in \(d) year." )
        }
    }
    BTC(price: 7, 100, 600, 220, 600, 1000, 46000, date: 2012, 2013, 2014, 2015, 2017, 2022)

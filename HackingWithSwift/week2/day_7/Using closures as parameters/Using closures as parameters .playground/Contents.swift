func cashOut (bank: (String) -> Void) {
    print("My firm sent salary to my bank account.")
    bank("mBank")
    print("I comeback home")
}
cashOut { (place: String) in
    print("I'm going to \(place) to cashout")
}

func buyProducts (app: (String) -> Void) {
    print("I need to buy grocery very fast")
          app("Lisek.app")
          print("I take it in 10 minutes")
}
buyProducts { (application: String) in
    print("I installed \(application) and order products in it" )
}

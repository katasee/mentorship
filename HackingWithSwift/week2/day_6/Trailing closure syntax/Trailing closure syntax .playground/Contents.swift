func mobileConnect(action: () -> Void) {
    print("I don't have money in my phone")
    action()
    print("I have Internet!")
}
mobileConnect() {
    print("I topped up my account")
}

func food(lunch: () -> Void) {
    print("At the morning I'm always eat eggs")
    lunch()
    print("At the dinner I'm eatin meat with rice or pasta")
}
food () {
 print("Lunch always differnt, because I'm buying dish at work")
}

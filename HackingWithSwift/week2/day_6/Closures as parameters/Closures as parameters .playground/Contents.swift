let myGymDay = {
    print("Monday and Friday")
}
func gym(day: () ->Void) {
    print("I'm going to gym:")
    day()
    print("At Sunday i have weekend")
}
gym(day:myGymDay)


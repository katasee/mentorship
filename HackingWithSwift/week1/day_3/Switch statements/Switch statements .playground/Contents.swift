let color = "black"

switch color {
case "red":
    print("i'm happy")
    fallthrough
case "green":
    print ("i'm joyful")
case "black":
    print ("i'm angry")
    fallthrough
default:
    print("i'm proud")
}


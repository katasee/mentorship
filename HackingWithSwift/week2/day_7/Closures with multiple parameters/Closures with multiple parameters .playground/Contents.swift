func cooking(ingredient: (_ firstItem: String, _ firstQuantity: Int, _ secondItem: String, _ secondQuantity: Int) -> String) {
    print("I will cook pasta carbonara")
    let recipe = ingredient("pasta",100,"beacon",150)
    print(recipe)
    print("Bon apetit")
}
cooking {
    "For carbonara I need \($1)g of \($0) and \($3)g of \($2) "
}

func waterBalance(_ today: Int, _ norm: Int) {
    let glass = 250
    let totalWater = today * glass
    
    if totalWater < norm {
        print("You need drink some more")
    } else {
        print ("Today you met the norm of the day")
    }
}
waterBalance(5,2000)

struct Barcelona {
    var name: String
    var barcelonaPlayer: Bool
    
    var clubnNow: String {
        if barcelonaPlayer {
            return "\(name) play in Barcelona"
        } else {
            return "\(name) is not Barcelona player"
        }
    }
}
let leoMessi = Barcelona(name: "Leo Messi", barcelonaPlayer: false)
print(leoMessi.clubnNow)

struct Investition {
    var years: Int
    var investmentPlan: String{
        if years < 5 {
            return "Crypto"
        } else {
            return "Stocks"
        }
    }
}
let investition = Investition(years: 10)
print(investition.investmentPlan)

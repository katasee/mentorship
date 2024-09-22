struct CryptoWallet {
    var walletName: String
    var address: String
    init?(walletName: String, address: String) {
        guard walletName.count >= 7 else { return nil }
        guard address.lowercased() != "address" else { return nil }
        
        self.address = address
        self.walletName = walletName
    }
}

let myWallet = CryptoWallet(walletName: "TrustWallet", address: "dajjk12nkdnk1341")
let myFriendWallet = CryptoWallet(walletName: "Trezor", address: "sahsjaxu34")

struct Website {
    var url: String
    init?(url: String) {
        if url.hasPrefix("ht"){
            self.url = url
        } else {
            print ("Invalid website URL.")
            return nil
        }
    }
}
let page = Website(url: "https://chatgpt.com/c/66f02a4b-e0fc-800c-ab1e-59fcb7087ffe")

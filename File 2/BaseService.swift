


import Foundation
import Firebase

let BASE_URL = "fileb.firebaseIO.com"

let FIREBASE_REF = Firebase(url: BASE_URL)

var CURRENT_USER: Firebase
{
    let userID = UserDefaults.standard.value(forKey: "uid") as! String
    
    let currentUser = Firebase(url: "\(FIREBASE_REF)").child(byAppendingPath: "users").child(byAppendingPath: userID)
    
    return currentUser!
}

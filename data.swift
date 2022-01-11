import Foundation
import import SwiftUI

struct EmailUser {
    var username: String = ""
    var password: String = ""
    var email: String = ""
}
// potential service
struct PhoneUser {
    var username: String = ""
    var password: String = ""
    var email: String = ""
}


func validateUsername(username: String) -> Bool {
    // validate username here
    return true
}

func validatePassword(password: String) -> Bool {
    // validate passsword here
    return true
}
func validateEmail(email: String) -> Bool {
    // validate email here
    var answer = false
    if email.contains("@") && email.contains(".com"){
        answer = true
    } 
    return answer
}
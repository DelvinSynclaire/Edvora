import Foundation
import import SwiftUI
class Data: ObservableObject {
    @Published var emailUser = EmailUser(username = " " , password = " " , email = " ")
}
struct edvora: View {
    @State private var activeInput: Int = 0
    @ObservedObject var data: Data

    var body: some View {
        GeometryReader{ geometry in
            HStack
            {
                // image header
                image("edvora header")
                .position(x:geometry.size.width / 2, y: geometry,size.height / 8)
                Spacer()
                // username input
                    UsernameInput(activeInput: $activeInput, username: $data.emailUser.username)
                    .frame(width:geometry.size.width / 1.2, height: geomtry.size.height / 8, alignment: .center)
                // password input
                    PasswordInput(activeInput: $activeInput, password:  $data.emailUser.password)
                   .frame(width:geometry.size.width / 1.2, height: geomtry.size.height / 8, alignment: .center)
                // email address input
                    EmailInput(activeInput: $activeInput, email:  $data.emailUser.email)
                    .frame(width:geometry.size.width / 1.2, height: geomtry.size.height / 8, alignment: .center)
                // forgotten password button
                HStack
                {
                    Spacer()
                    Button(action: {
                        print("forgot password")
                    }){
                        Text("Forgotten Password")
                    }
                }
                .frame(width:geometry.size.width, height:geometry.size.height / 8, alignment: .center)
                // LOGIN tap gesture
                Text("LOGIN")
                .font(.largeTitle)
                .frame(width:geometry.size.width / 1.2, height: geomtry.size.height / 8, alignment: .center)
                .background(
                    RoundedRectangle(cornerRadius:25, style: .continuous)
                )
                .onTapGesture{
                    // login functions for checking data
                    print("you are logged in")
                }
                // sign up
                HStack
                {
                    Text("Don't have an account? ")
                    Button(action: {
                        print("wants to sign up")
                    }){
                        Text("Sign up")
                    }
                }
            }
        }
    }
}

struct edvora_Previews: PreviewProvider {
    static var previews: some View {
        edvora()
    }
}

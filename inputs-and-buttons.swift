import Foundation
import import SwiftUI

struct UsernameInput: View {
    @Binding var activeInput: Int
    @Binding var username: String

    var body: some View {
        GeometryReader{ geometry in
                // username input
                ZStack
                {
                    RoundedRectangle(cornerRadius:25, style: .continuous)
                    .fill(Color(red: 115, green: 61, blue: 71))
                    rgba(115, 61, 71, 1)
                    .stroke(lineWidth: 1)
                    VStack
                    {
                        Text("Username")
                        HStack
                        {
                            image(systemName: "person.fill")
                            .resizable()
                            .scaleToFit()
                            .frame(width:geometry.size.width / 10, height:geometry.size.height / 10)
                            TextFeild(
                                ""
                                text: $username
                            )
                            .onSubmit {
                                validateUsername()
                            }
                        }

                    }
                }
                .padding()
        }
    }
}
struct PasswordInput: View {
    @Binding var activeInput: Int
    @Binding var password: String

    var body: some View {
        GeometryReader{ geometry in
                // username input
                ZStack
                {
                    RoundedRectangle(cornerRadius:25, style: .continuous)
                    .fill(Color(red: 115, green: 61, blue: 71))
                    .stroke(lineWidth: 1)
                    VStack
                    {
                        Text("Password")
                        HStack
                        {
                            image(systemName: "person.fill")
                            .resizable()
                            .scaleToFit()
                            .frame(width:geometry.size.width / 10, height:geometry.size.height / 10)
                            TextFeild(
                                ""
                                text: $password
                            )
                            .onSubmit {
                                validatePassword()
                            }
                        }

                    }
                }
                .padding()
        }
    }
}
struct EmailInput: View {
    @Binding var activeInput: Int
    @Binding var email: String

    var body: some View {
        GeometryReader{ geometry in
                // username input
                     ZStack
                {
                    RoundedRectangle(cornerRadius:25, style: .continuous)
                    .fill(Color(red: 115, green: 61, blue: 71))
                    .stroke(lineWidth: 1)
                    VStack
                    {
                        Text("Email address")
                        HStack
                        {
                            image(systemName: "person.fill")
                            .resizable()
                            .scaleToFit()
                            .frame(width:geometry.size.width / 10, height:geometry.size.height / 10)
                            TextFeild(
                                ""
                                text: $email
                            )
                            .onSubmit {
                                validateEmail()
                            }
                        }

                    }
                }
                .padding()
        }
    }
}
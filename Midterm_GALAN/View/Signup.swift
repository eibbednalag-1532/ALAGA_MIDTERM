//
//  Signuo.swift
//  Midterm_GALAN
//
//  Created by Mac-LAB on 9/8/26.
//
import SwiftUI

struct Signup: View {
    @Binding var currentScreen: String
    var body: some View {
        ZStack {
            AngularGradient(
                stops: [Gradient.Stop(color: Color(.sRGB, red: 156/255, green: 229/255, blue: 174/255), location: 0.36),
                        Gradient.Stop(color: Color(.sRGB, red: 160/255, green: 192/255, blue: 233/255), location: 0.89)
                       ],
                center: .center,
                startAngle: .degrees(90),
                endAngle: .degrees(360)
            )
            .ignoresSafeArea()
            VStack {
                CreateAcc()
                InfoFields()
                SignupButton(currentScreen: $currentScreen)
                OrDesign()
                GoogleButton()
            }
        }
    }
}
struct CreateAcc: View {
    var body: some View {
        VStack {
            Text("Create Account")
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .offset(y: -25)
            
                .padding(.vertical,10)
            
            Text("Let's create your account")
                .font(.system(size: 15, weight: .regular))
                .foregroundStyle(Color.gray)
                .offset(y: -25)
        }
        .padding(.vertical,20)
    }
}

struct InfoFields: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    var body: some View {
        VStack {
            TextField("First Name", text: $firstName)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 300, maxHeight: 35)
                .padding(.bottom,8)
            
            TextField("Last Name", text: $lastName)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 300, maxHeight: 35)
                .padding(.bottom,8)
            
            TextField("Email Address", text: $email)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 300, maxHeight: 35)
                .padding(.bottom,8)
            
            TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 300, maxHeight: 35)
                .padding(.bottom,8)
            
            TextField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 300, maxHeight: 35)
                .padding(.bottom,8)
            
        }
    }
}
struct SignupButton: View {
    @Binding var currentScreen: String
    var body: some View {
        Button(action: {
            currentScreen = "home"
            
        }) {
            Text("Sign up")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(width: 275, height: 30)
        }
        .buttonStyle(.borderedProminent)
        .tint(.green)
        .padding(.vertical,40)
        
    }
}

#Preview {
    Signup(currentScreen: .constant("signin"))
}

//
//  SignIn.swift
//  Midterm_GALAN
//
//  Created by Mac-LAB on 9/1/26.
//
import SwiftUI

struct SignIn: View {
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
                LogoDesign()
                LogIn()
                SigninButton()
                OrDesign()
                GoogleButton()
                SigninText(currentScreen: $currentScreen)
            }
            .padding()
        }
    }
}

struct LogoDesign: View {
    var body: some View{
        VStack(spacing: 5){
            ZStack {
                Image(systemName: "pawprint.fill")
                    .font(.system(size: 60))
                    .foregroundStyle(LinearGradient (colors:
                                                        [Color(red: 144/255,
                                                               green: 213/255,
                                                                blue: 255/255),
                                                         .blue],
                                                     startPoint: .top,
                                                     endPoint: .bottom))
                    .offset(x: -92, y: -45)
                
                Text("Alaga")
                    .font(.system(size: 85, weight: .bold, design: .rounded))
                    .foregroundStyle(AngularGradient(colors :
                                                        [Color(red: 24/255, green: 104/255, blue: 174/255),
                                                               Color(red: 45/255, green: 160/255, blue: 140/255),
                                                               Color(red: 24/255, green: 104/255, blue: 174/255)],
                                                     center: .center,
                                                     angle: .degrees(135)))
                }
            .padding()
            
            
            Text("Welcome Back!")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            
            Text("Sign in to continue caring for your lovely pets")
                .font(.system(size: 18, weight: .regular, design: .rounded))
                .multilineTextAlignment(.center)
                .lineSpacing(10)
                .padding(.horizontal, 40)
    
        }
        .padding()
        
    }
}

struct LogIn: View {
    @State private var loginEmail: String = ""
    @State private var loginPassword: String = ""
    var body: some View {
        VStack {
            TextField("Email Address", text: $loginEmail)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 300, maxHeight: 35)
                .padding(.bottom,8)
            
            TextField("Password", text: $loginPassword)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 300)
                .padding(.bottom, 8)
            
        }
    }
}

struct SigninButton: View {
    var body: some View {
        Button(action: {
            
        }) {
            Text("Sign in")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(width: 275, height: 30)
        }
        .buttonStyle(.borderedProminent)
        .tint(.green)
        .padding(.vertical,40)
        
        
    }
}

struct OrDesign: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.gray.opacity(0.5))
                .frame(width: 130,height: 1)
            
            Text("or")
                .font(.system(size: 15, weight: .regular, design: . rounded))
                .foregroundColor(.gray)
                .padding(.horizontal, 5)
            
            Rectangle()
                .fill(Color.gray.opacity(0.5))
                .frame(width: 130,height: 1)
        }
        .padding(5)
    }
}

struct GoogleButton: View {
    var body: some View {
        Button(action: {
            
        }) {
            HStack{
                
                Image("google logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 20)
                
                
                Text("Continue with Google")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(Color.black)
            }
            .frame(width: 300, height: 40)
            .background(Color.white)
            .cornerRadius(10)
            .offset(y: 20)
        }
    }
    
}
struct SigninText: View {
    @Binding var currentScreen: String
    var body: some View {
        HStack {
            Text("Don't have an account?")
                .font(.system(size: 15, weight: .regular))
                .foregroundStyle(Color.gray)
            
            Button(action: {
            currentScreen = "signup"
            }) {
                Text("Sign up")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(Color.green)
            }
        }
        .offset(y: 35)
    }
}
#Preview {
    SignIn(currentScreen: .constant("signin"))
}


//
//  Profile.swift
//  Midterm_GALAN
//
//  Created by Mac-LAB on 9/16/26.
//
import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            AngularGradient(
                stops: [Gradient.Stop(color: Color(.sRGB, red: 156/255, green: 229/255, blue: 174/255), location: 0.36),
                        Gradient.Stop(color: Color(.sRGB, red: 160/255, green: 192/255, blue: 233/255), location: 0.89)
                       ],
                center: .center,
                startAngle: .degrees(90),
                endAngle: .degrees(360)
            )
            .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 10) {
                
                IconProfile()
                Name()
                EmailAcc()
                ContactNumber()
                
            }
        }
        
    }
}
struct IconProfile: View {
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .padding(60)
                .clipShape(Circle())
                .background(Color.white.opacity(0.5))
                .cornerRadius(100)
                .overlay(
                    Circle().stroke(Color.green, lineWidth: 2)
                       
                )
                 .shadow(radius: 2)
            
            Text("Profile")
                .font(.system(size: 45, weight: .semibold, design: .rounded))
                .padding()
        }
        .padding()
        
    }
}
struct Name: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            Text("Username")
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .padding(.horizontal)
                .offset(x: 32)
            ZStack {
               Rectangle()
                    .foregroundStyle(Color.white)
                    .frame(width: 320, height: 45)
                    .cornerRadius(10)
                    .offset(x: 40)
                
                Text("Dorothy Mae Sanchez")
                    .font(.system(size: 18.5, weight: .regular))
            }
            
        }
    }
}
struct EmailAcc: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            Text("Email")
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .padding(.horizontal)
                .offset(x: 32)
            ZStack {
               Rectangle()
                    .foregroundStyle(Color.white)
                    .frame(width: 320, height: 45)
                    .cornerRadius(10)
                    .offset(x: 40)
                
                Text("dorothysanchez@gmail.com")
                    .font(.system(size: 18.5, weight: .regular))
                    .foregroundColor(.black)
                    .offset(x: 26)
            }
        }
    }
}
struct ContactNumber: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            Text("Contact Number")
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .padding(.horizontal)
                .offset(x: 32)
            ZStack {
               Rectangle()
                    .foregroundStyle(Color.white)
                    .frame(width: 320, height: 45)
                    .cornerRadius(10)
                    .offset(x: 40)
                
                Text("09825402984")
                    .font(.system(size: 18.5, weight: .regular))
                    .offset(x: -28)
            }
            
        }
    }
}
#Preview {
    Profile()
}

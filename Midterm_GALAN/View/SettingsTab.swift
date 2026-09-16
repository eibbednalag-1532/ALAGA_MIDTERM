//
//  SettingsTab.swift
//  Midterm_GALAN
//
//  Created by Mac-LAB on 9/11/26.
//
import SwiftUI

struct SettingsTab: View {
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
            VStack(alignment: .center, spacing: 5) {
                
                SettingsTabPreviews()
                ButtonAcc()
                ButtonFAQ()
                ButtonLogout()
                
                    .padding(.horizontal)
                    .padding(.top, 10)
            }
            
        }
    }
}
struct SettingsTabPreviews: View {
    var body: some View {
        Text("Settings")
            .font(.system(size: 50, weight: .bold, design: .rounded))
            .padding(.vertical,90 )
    }
    
}
struct ButtonAcc: View {
    var body: some View {
        
        Button(action: {
            
        }) {
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Image(systemName: "person")
                        .font(.system(size: 55))
                        .foregroundStyle(Color.black)
                        .offset(x: -20, y: 5)
                    
                    
                    Text("Account")
                        .font(.system(size: 29, weight: .regular))
                        .foregroundStyle(Color.black)
                        .offset(x: -15, y: -5)
                    
                    Image(systemName: "chevron.forward")
                        .font(.system(size: 25))
                        .foregroundStyle(Color.gray.opacity(0.8))
                        .offset(x: 95, y: 10)
                    
                    
                }
                Text("Manage Your Account")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(Color.gray.opacity(0.9))
                    .padding(.horizontal, 77)
                    .padding(.vertical, -30)
                    .offset(x: -24, y: 5)
            }
            .frame(width: 360, height: 105)
            .background(Color.white)
            .cornerRadius(5)
            .padding()
           
            
        }
        .offset(y: -60)
    }
}
struct ButtonFAQ: View {
    var body: some View {
        
        Button(action: {
            
        }) {
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Image(systemName: "questionmark.circle")
                        .font(.system(size: 55))
                        .foregroundStyle(Color.black)
                        .offset(x: -5, y: 5)
                    
                    
                    Text("FAQ")
                        .font(.system(size: 29, weight: .regular))
                        .foregroundStyle(Color.black)
                        .offset(x: -3, y: -5)
                    
                    Image(systemName: "chevron.forward")
                        .font(.system(size: 25))
                        .foregroundStyle(Color.gray.opacity(0.8))
                        .offset(x: 164, y: 10)
                    
                    
                }
                Text("Frequently Asked Questions")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(Color.gray.opacity(0.9))
                    .padding(.horizontal, 77)
                    .padding(.vertical, -30)
                    .offset(x: -8, y: 6)
            }
            .frame(width: 360, height: 105)
            .background(Color.white)
            .cornerRadius(5)
            .padding()
           
            
        }
        .offset(y: -80)
    }
}
struct ButtonLogout: View {
    var body: some View {
        
        Button(action: {
            
        }) {
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Image(systemName: "rectangle.portrait.and.arrow.forward")
                        .font(.system(size: 50))
                        .foregroundStyle(Color.red)
                        .offset(x: -5, y: 5)
                    
                    
                    Text("Log Out")
                        .font(.system(size: 29, weight: .regular))
                        .foregroundStyle(Color.red)
                        .offset(x: -4.5, y: -5)
                    
                    Image(systemName: "chevron.forward")
                        .font(.system(size: 25))
                        .foregroundStyle(Color.gray.opacity(0.8))
                        .offset(x: 164, y: 10)
                    
                    
                }
                Text("Sign Out From Your Account")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(Color.gray.opacity(0.9))
                    .padding(.horizontal, 77)
                    .padding(.vertical, -30)
                    .offset(x: -6, y: 6)
            }
            .frame(width: 360, height: 105)
            .background(Color.white)
            .cornerRadius(5)
            .padding()
           
            
        }
        .offset(y: -110)
    }
}

#Preview {
   SettingsTab()
}

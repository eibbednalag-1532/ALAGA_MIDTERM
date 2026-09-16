//
//  PetTab.swift
//  Midterm_GALAN
//
//  Created by Mac-LAB on 9/11/26.
//

import SwiftUI

struct PetTab: View {
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
                PetGreeting()
                AddButton()
                
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                
                Color.clear.frame(height: 15)
                Spacer()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 15){
                        
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}
struct PetGreeting: View {
    var body: some View {
        HStack {
            VStack {
                
                Text("Your Pets!")
                    .font(.system(size: 45, weight: .bold, design: .rounded))
                
            }
            Image(systemName: "pawprint.fill")
                .frame(width: 10)
                .foregroundStyle(Color.blue)
                .rotationEffect(.degrees(-20))
                .offset(y: -5)
            
            Image(systemName: "pawprint.fill")
                .frame(width: 10)
                .foregroundStyle(Color.blue)
                .rotationEffect(.degrees(-20))
                .offset(x: -5, y: 10)
        }
        .padding()
    }
}

struct AddButton: View {
    var body: some View {
        VStack {
            ZStack {
                Button(action: {
                    
                }) {
                    Circle()
                        .tint(.green)
                        .frame(width: 70)
                }
                
                Image(systemName: "plus")
                    .font(.system(size: 40))
                    .foregroundStyle(Color.white)
                    
            }
        }
        .offset(x: 275, y: 538)
    }
}

#Preview {
    PetTab()
}

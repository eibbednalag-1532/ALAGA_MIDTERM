//
//  ReminderTab.swift
//  Midterm_GALAN
//
//  Created by Mac-LAB on 9/11/26.
//
import SwiftUI

struct ReminderTab: View {
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
                
                ReminderTabPreviews()
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                Color.clear.frame(height: 15)
                Spacer()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 10){
                    
                        
                    }
                    .padding(.horizontal)
                }
            }
            
        }
    }
}
struct ReminderTabPreviews: View {
    var body: some View {
        Text("Wala Pa")
            .font(.system(size: 20, weight: .semibold, design: .rounded))
    }
    
}

#Preview {
    ReminderTab()
}


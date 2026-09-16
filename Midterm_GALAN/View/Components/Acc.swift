//
//  Acc.swift
//  Midterm_GALAN
//
//  Created by Mac-LAB on 9/15/26.
//
import SwiftUI

struct Acc: View {
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
                PageName()
                
                
                Color.clear.frame(height: 5)
                Spacer()
                ScrollView {
                    VStack(alignment: .leading, spacing: 10){
                        
                        FullClinicInfo()
                        
                        
                        
                    }
                    .padding(.horizontal)
                }
            }
            .padding(.top, 90)
        }
    }
}

#Preview {
    Acc()
}


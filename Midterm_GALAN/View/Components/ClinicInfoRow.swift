////
////  ClinicInfoRow.swift
////  Midterm_GALAN
////
////  Created by Mac-LAB on 9/11/26.
////
//
import SwiftUI

struct ClinicName: View {
    let infoName: String
    let iconName: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 8){
                Text(infoName)
                .font(.system(size: 38, weight: .bold, design: .rounded))
                    .lineLimit(2)
                    .minimumScaleFactor(0.4)
            //Tells swiftui that this line is more important than the spacing
                    .layoutPriority(1)

                Image(systemName: iconName)
                    .foregroundStyle(Color.yellow)
                    .font(.system(size: 24))
                    .offset(x: -55, y: 12)
        }
        .padding(.horizontal, 16)
        //Prevents the hstack from exceeding the screen
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
struct ClinicFullInfo: View {
    let infoIcon: String
    let infoEvent: String
    
    
    var body: some View {
        
        HStack{
            Image(systemName: infoIcon)
                .foregroundStyle(Color.gray.opacity(0.8))
                .padding(.top, 4)
            
            Text(infoEvent)
                .font(.system(size: 20, weight: .regular))
            //Fixes cramped wording in the hstack
                .lineLimit(nil)
            //Fixes the words from expanding horizontally, makes it go vertically
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 10)
            
            Spacer()
        }
        .padding(15)
        .background(Color.white.opacity(0.6))
        .frame(maxWidth: .infinity, minHeight: 50)
        .border(Color.green, width: 1)
    }
}

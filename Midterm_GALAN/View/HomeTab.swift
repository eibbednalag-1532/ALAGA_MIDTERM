//
//  HomeTab.swift
//  Midterm_GALAN
//
//  Created by Mac-LAB on 9/8/26.
//
import SwiftUI

struct HomeTab: View {
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
                Greetings()
                
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                //Its a fixed-sixed vertical Spacer, forces a 15 point gap between greetings nad the spacer
                Color.clear.frame(height: 15)
                Spacer()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 10){
                        CalendarView()
                        ComingReminder()
                        ReminderCards()
                        VetClinics()
                        VetClinicCard()
                        
                    }
                    .padding(.horizontal)
                }
            }
            
        }
    }
}

struct Greetings: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Good morning.")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(Color.gray)
                
                Text("Pet Parent!")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                
            }
            Image(systemName: "pawprint.fill")
                .frame(width: 10)
                .foregroundStyle(Color.blue)
                .rotationEffect(.degrees(-20))
            
            Image(systemName: "pawprint.fill")
                .frame(width: 10)
                .foregroundStyle(Color.blue)
                .rotationEffect(.degrees(-20))
                .offset(x: -5, y: 15)
        }
        .offset(x: 10,y: 50)
    }
}

struct CalendarView: View {
    @State private var selectedDateTime = Date()
    var body: some View {
        VStack {
            Text("Calendar")
                .font(.system(size: 19, weight: .bold, design: .rounded))
                .offset(x: -136)
            
            DatePicker(
                "Selected Date and Time", selection: $selectedDateTime,
                displayedComponents: [.date, .hourAndMinute]
            )
            .datePickerStyle(.graphical)
            .tint(Color.blue)
            .padding()
            .background(Color.white)
            .cornerRadius(15)
        }
        
    }
}
struct ComingReminder: View {
    var body: some View {
        HStack {
            VStack {
                Text("Upcoming Reminders")
                    .font(.system(size: 19, weight: .bold, design: .rounded))
                    .offset(x: 10, y: 5)
            }
            .padding(.vertical, 6)
        }
    }
}
struct ReminderCards: View {
    var body: some View {
        VStack {
            RCardDesign(eventName: "Vaccination - Buddy", dateTime: "May 20, 2024 - 10:00 AM")
            RCardDesign(eventName: "Check-Up - Blue", dateTime: "June 6, 2024 - 11:00 AM")
            RCardDesign(eventName: "Grooming - Buddy", dateTime: "June 8, 2024 - 11:30 AM")
        }
        
    }
}

struct RCardDesign: View {
    let eventName: String
    let dateTime: String
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(eventName)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .offset(x: -60)
                
                Text(dateTime)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(Color.gray)
                    .offset(x: -58)
            }
            .padding(10)
            .frame(maxWidth: 370, maxHeight: 130)
            .background(Color.white)
            .cornerRadius(15)
            .padding(.vertical, 3)
            
            Image(systemName: "calendar")
                .font(.system(size: 45))
                .foregroundStyle(Color.blue)
                .offset(x: 145)
        }
    }
}
struct VetClinics: View {
    var body: some View {
        HStack {
            Text("Near Vet Clinics")
                .font(.system(size: 19, weight: .semibold, design: .rounded))
                
            Spacer()
            
            NavigationLink(destination: ClinicsInfo()) {
                Text("View All")
                    .font(.system(size: 19, weight: .regular))
                    .foregroundStyle(Color.blue)
            }
        }
        .padding(.horizontal)
    }
}
struct VetClinicCard: View {
    var body: some View {
        VStack {
            ClinicCardDesign(clinicName: "JVETSERV VET CLINIC", clinicTime: "8:00 AM - 9:00 PM", clinicEvent1: "Check-Up", clinicEvent2: "Grooming", clinicEvent3: "Lodging", emergency: "Accepts Emergency")
            
            
            ClinicCardDesign(clinicName: "VET FOCUS VET CLINIC", clinicTime: "8:00 AM - 6:00 PM", clinicEvent1: "Check-Up", clinicEvent2: "Grooming", clinicEvent3: "Lodging", emergency: "Accepts Emergency")
            
        }
    }
}
struct ClinicCardDesign: View {
    let clinicName: String
    let clinicTime: String
    let clinicEvent1: String
    let clinicEvent2: String
    let clinicEvent3: String
    let emergency: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack(alignment: .top){
                VStack(alignment: .leading, spacing: 6) {
                    Text(clinicName)
                        .font(.system(size: 19.5, weight: .semibold, design: .rounded))
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    
                    Text(clinicTime)
                        .font(.system(size: 15, weight: .regular))
                        .foregroundStyle(Color.gray)
                }
                
                Spacer()
                
                Text(emergency)
                    .font(.system(size: 10, weight: .regular))
                    .foregroundStyle(Color.green)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .background(Color.green.opacity(0.2))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.green, lineWidth: 2))    .clipShape(RoundedRectangle(cornerRadius: 10))                .cornerRadius(10)
                    .offset(x: 5, y: -5)
            }
            HStack(alignment: .center, spacing: 10) {
                Text(clinicEvent1)
                    .padding(10)
                    .font(.system(size: 12, weight: .regular))
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(5)
                    .frame(minHeight: 50)
                
                
                Text(clinicEvent2)
                    .padding(10)
                    .font(.system(size: 12, weight: .regular))
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(5)
                    .frame(minHeight: 50)
                
                
                Text(clinicEvent3)
                    .padding(10)
                    .font(.system(size: 12, weight: .regular))
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(5)
                    .frame(minHeight: 50)
                
                
                Spacer()
                
            }
        }
        .padding(20)
        .background(Color.white)
        .frame(maxWidth: .infinity)
        .cornerRadius(16)
    }
}

#Preview {
    HomeTab()
}

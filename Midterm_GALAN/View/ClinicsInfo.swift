//
//  ClinicsInfo.swift
//  Midterm_GALAN
//
//  Created by Mac-LAB on 9/10/26.
//
import SwiftUI

struct ClinicsInfo: View {
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

struct PageName: View {
    var body: some View {
        Text("Near Vet Clinics")
            .font(.system(size: 40, weight: .bold, design: .rounded))
            .frame(width: 300)
    }
}
struct FullClinicInfo: View {
    var body: some View {
        VStack{
            
            // JVERTSERV
            ClinicName(infoName: "JVERTSERV Veterinary Clinic Lucena - 4.6", iconName: "star.fill")
            
            ClinicFullInfo(infoIcon: "mappin.and.ellipse", infoEvent: "516 Old Kabukiran Compound, Brgy. Gulang-Gulang")
            
            ClinicFullInfo(infoIcon: "clock", infoEvent: "Mon-Sun: 8:00 AM - 9:00 PM")
            
            ClinicFullInfo(infoIcon: "chart.line.text.clipboard", infoEvent: "Walk-in for check-ups & medical issues only Appoinment for grooming")
            
            ClinicFullInfo(infoIcon: "exclamationmark.circle", infoEvent: "ER: (8:00 AM - 9:00 PM)")
            
            ClinicFullInfo(infoIcon: "pet.carrier", infoEvent: "Dogs & Cats Birds/Hmasters Require special Branch Notice")
            
            ClinicFullInfo(infoIcon: "cross.vial", infoEvent: "Serives: Check-Ups - Pet Grooming - Lodging - Confinement - Surgeries - Spay & Neutur - CBC - Blood Chem - X-Ray - Ultrasound ")
            
            ClinicFullInfo(infoIcon: "banknote", infoEvent: "Consults: ₱300 - ₱500 Grooming: ₱350+ Surgeries/Labs: ₱1,500 - ₱8,000+ ")
            
            ClinicFullInfo(infoIcon: "phone", infoEvent: "Mobile: +63 998 424 8223/+63 916 739 1997 ")
            
            //VETFOCUS
            ClinicName(infoName: "VetFocus Care Animal - 4.4", iconName: "star.fill")
            
            ClinicFullInfo(infoIcon: "mappin.and.ellipse", infoEvent: "OakBrook Ave, Phase 3, Pleasantville Subd, Ilayang Iyam")
            
            ClinicFullInfo(infoIcon: "clock", infoEvent: "Mon-Sun: 8:00 AM - 6:00 PM")
            
            ClinicFullInfo(infoIcon: "chart.line.text.clipboard", infoEvent: "Walk-in first in first served basis Appoinment for home services")
            
            ClinicFullInfo(infoIcon: "exclamationmark.circle", infoEvent: "ER: (8:00 AM - 6:00 PM)")
            
            ClinicFullInfo(infoIcon: "pet.carrier", infoEvent: "Dogs & Cats")
            
            ClinicFullInfo(infoIcon: "cross.vial", infoEvent: "Serives: Vet Consultations - Grooming - Lodging - Sick Animal Confinement - Spay & Neuter - Soft Tissue Surgery - Vaccinations")
            
            ClinicFullInfo(infoIcon: "banknote", infoEvent: "Consults: ₱300 - ₱600 Grooming: ₱350 - ₱800 Surgeries: Varies on weight ")
            
            ClinicFullInfo(infoIcon: "phone", infoEvent: "Mobile: +63 993 476 8522 Landline: (042) 421-9086")
            
            //VET STATION EMERGENCY
            ClinicName(infoName: "Vet Station Emergency Animal CLinic - 2.3", iconName: "star.fill")
            
            ClinicFullInfo(infoIcon: "mappin.and.ellipse", infoEvent: "Old Manila South Road, Brgy Isabang")
            
            ClinicFullInfo(infoIcon: "clock", infoEvent: "Open 24 Hours(Daily)")
            
            ClinicFullInfo(infoIcon: "chart.line.text.clipboard", infoEvent: "Walk-in accepted Calling ahead is highly recommended for midnight arrivals")
            
            ClinicFullInfo(infoIcon: "exclamationmark.circle", infoEvent: "ER: 24 Hours (Daily)")
            
            ClinicFullInfo(infoIcon: "pet.carrier", infoEvent: "Dogs & Cats")
            
            ClinicFullInfo(infoIcon: "cross.vial", infoEvent: "Serives: 24/7 Emergency Triage - ICU Confinement - Routine CHeck-Ups - Lodging - General Surgery - Deworming - Vaccinations - Grooming")
            
            ClinicFullInfo(infoIcon: "banknote", infoEvent: "Consults: ₱300 - ₱500 Grooming: ₱350 - ₱800 Midnight ER Based Fee: ₱1,000+ Basic Intake(Excludes Medicines)")
            
            ClinicFullInfo(infoIcon: "phone", infoEvent: "Mobile: +63 968 589 8610 (Call While in Transit For Late-Night Arrivals))")
            
            //PET BLISS VETERINARY
            ClinicName(infoName: "Pet Bliss Veterinary Clinic - 3.0", iconName: "star.fill")
            
            ClinicFullInfo(infoIcon: "mappin.and.ellipse", infoEvent: "Lucena City Proper (Near Quezon Ave Area)")
            
            ClinicFullInfo(infoIcon: "clock", infoEvent: "Mon-Sun: 8:00 AM - 6:00 PM")
            
            ClinicFullInfo(infoIcon: "chart.line.text.clipboard", infoEvent: "Walk-in welcome for general check-ups Appoinments preferred for complex surgeries")
            
            ClinicFullInfo(infoIcon: "exclamationmark.circle", infoEvent: "ER: 8:00 AM - 6:00 PM (Daytime Emergency Stabilization)")
            
            ClinicFullInfo(infoIcon: "pet.carrier", infoEvent: "Dogs & Cats")
            
            ClinicFullInfo(infoIcon: "cross.vial", infoEvent: "Serives: VConsultations - Confinement - Major/Minor Surgery - Laboratory Blood Assesments - UltraSsound - Lodging - Basic Grooming")
            
            ClinicFullInfo(infoIcon: "banknote", infoEvent: "Consults: ₱300 - ₱500 Grooming: ₱350+ Confinement: Variable Daily Tracking Rates ")
            
            ClinicFullInfo(infoIcon: "phone", infoEvent: "Mobile: +63 925 523 3615")
            
            //DOMINGO VETERINARY CLINIC
            ClinicName(infoName: "Domingo Veterinary Clinic & Grooming Center - 4.8", iconName: "star.fill")
            
            ClinicFullInfo(infoIcon: "mappin.and.ellipse", infoEvent: "Pearl Street, West Employees Village, Brgy Gulang-Gulang")
            
            ClinicFullInfo(infoIcon: "clock", infoEvent: "Mon-Sat: 9:00 AM - 12:00 PM & 3:00 PM - 6:00 PM Sun: 9:00 AM - 12:00 PM")
            
            ClinicFullInfo(infoIcon: "chart.line.text.clipboard", infoEvent: "Walk-in accepted")
            
            ClinicFullInfo(infoIcon: "exclamationmark.circle", infoEvent: "ER: 24 Hours (Daily)")
            
            ClinicFullInfo(infoIcon: "pet.carrier", infoEvent: "Dogs & Cats")
            
            ClinicFullInfo(infoIcon: "cross.vial", infoEvent: "Serives: General Health Check-Ups - Prescription Management - Minor Surgeries - Spay & Neuter - Pet Grooming")
            
            ClinicFullInfo(infoIcon: "banknote", infoEvent: "Consults: ₱250 - ₱400")
            
            ClinicFullInfo(infoIcon: "phone", infoEvent: "Mobile: +63 968 589 8610 (Call While in Transit FOr Late-Night Arrivals))")
            
            //ST. DIDACUS VETERINARY CLINIC
            ClinicName(infoName: "St. Didacus Veterinary Clinic - No Data", iconName: "star.fill")
            
            ClinicFullInfo(infoIcon: "mappin.and.ellipse", infoEvent: "125 Old Manila Road South Road, Lucena City")
            
            ClinicFullInfo(infoIcon: "clock", infoEvent: "Mon-Sat: 8:00 AM - 6:00 PM Sun: 9:00 AM - 6:00 PM")
            
            ClinicFullInfo(infoIcon: "chart.line.text.clipboard", infoEvent: "Walk-in accepted for outpatients Appoinments suggested for surgeries")
            
            ClinicFullInfo(infoIcon: "exclamationmark.circle", infoEvent: "ER: Daytime Emergencies Only")
            
            ClinicFullInfo(infoIcon: "pet.carrier", infoEvent: "Dogs & Cats")
            
            ClinicFullInfo(infoIcon: "cross.vial", infoEvent: "Serives: Outpatient Check-Ups - Vaccinations - Minor Surgeries - Pet grooming - Laboratory Tests")
            
            ClinicFullInfo(infoIcon: "banknote", infoEvent: "Consults: ₱300 - ₱500 Grooming: Starts Around ₱350")
            
            ClinicFullInfo(infoIcon: "phone", infoEvent: "Mobile: +63 908 914 4737 Landline: (042) 373-1330")
            
            //DEAR PET HUB
            ClinicName(infoName: "Dear Pet Hub - No Data", iconName: "star.fill")
            
            ClinicFullInfo(infoIcon: "mappin.and.ellipse", infoEvent: "125 Old Manila Road South Road,  Brgy. Isabang (In front of Valley Oaks Subd)")
            
            ClinicFullInfo(infoIcon: "clock", infoEvent: "Mon-Fri: 8:00 AM - 7:00 PM Sat: 10:00 AM - 5:00 PM")
            
            ClinicFullInfo(infoIcon: "chart.line.text.clipboard", infoEvent: "Walk-in accepted for basic wellness and retail shop need")
            
            ClinicFullInfo(infoIcon: "exclamationmark.circle", infoEvent: "ER: Not Available")
            
            ClinicFullInfo(infoIcon: "pet.carrier", infoEvent: "Dogs & Cats")
            
            ClinicFullInfo(infoIcon: "cross.vial", infoEvent: "Serives: Routine Vet Check-Ups - Preventive care - Pet Grooming - Pet Supplies Retailing")
            
            ClinicFullInfo(infoIcon: "banknote", infoEvent: "Consults: ₱250 - ₱400 Grooming: Options Starting ₱300")
            
            ClinicFullInfo(infoIcon: "phone", infoEvent: "Mobile: N/A")
            
            //TIPTOP ANIMAL CLINIC
            ClinicName(infoName: "Tiptop Animal Clinic - No Data", iconName: "star.fill")
            
            ClinicFullInfo(infoIcon: "mappin.and.ellipse", infoEvent: "Old Manila Road South Road, Lucena City")
            
            ClinicFullInfo(infoIcon: "clock", infoEvent: "Mon-Sat: 9:00 AM - 5:00 PM")
            
            ClinicFullInfo(infoIcon: "chart.line.text.clipboard", infoEvent: "Walk-in accepted for consultations")
            
            ClinicFullInfo(infoIcon: "exclamationmark.circle", infoEvent: "ER: Daytime Emergencies Only")
            
            ClinicFullInfo(infoIcon: "pet.carrier", infoEvent: "Dogs & Cats")
            
            ClinicFullInfo(infoIcon: "cross.vial", infoEvent: "Serives: General Consultations - Basic Wound Management - Vaccinations - Deworming - Prescription Pharmacy")
            
            ClinicFullInfo(infoIcon: "banknote", infoEvent: "Consults: ₱300 - ₱450")
            
            ClinicFullInfo(infoIcon: "phone", infoEvent: "Mobile: N/A")
        }
        .padding()
        .frame(maxWidth: .infinity)
        
        
    }
}



#Preview {
    ClinicsInfo()
    
}

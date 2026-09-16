//
//  MainTabView.swift
//  Midterm_GALAN
//
//  Created by Mac-LAB on 9/11/26.
//
import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        
        NavigationStack {
            TabView(selection: $selectedTab) {
                
                HomeTab()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                    .tag(0)
                
                PetTab()
                    .tabItem {
                        Label("Pets", systemImage: "pawprint.fill")
                    }
                    .tag(1)
                
                ReminderTab()
                    .tabItem {
                        Label("Reminder", systemImage: "bell.fill")
                    }
                    .tag(2)
                
                SettingsTab()
                    .tabItem {
                        Label("Settings", systemImage: "gearshape.fill")
                    }
                    .tag(3)
            }
            .tint(Color.green)
            .navigationBarBackButtonHidden(true)
        }
    }
}


#Preview {
    MainTabView()
}

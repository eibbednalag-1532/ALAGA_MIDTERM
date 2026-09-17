//
//  Midterm_GALANApp.swift
//  Midterm_GALAN
//
//  Created by Mac-LAB on 9/1/26.
//

import SwiftUI

@main
struct Midterm_GALANApp: App {
    @State private var currentScreen: String = "signin"
    var body: some Scene {
        WindowGroup {
            Group {
                if currentScreen == "signin" {
                    SignIn(currentScreen: $currentScreen)
                } else if currentScreen == "signup" {
                    Signup(currentScreen: $currentScreen)
                } else if currentScreen == "home" {
                    MainTabView()
                }
            }
            
        }
    }
}

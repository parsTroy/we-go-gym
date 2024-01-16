//
//  We_Go_GymApp.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-16.
//

import SwiftUI
import FirebaseCore

@main
struct We_Go_GymApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

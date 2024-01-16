//
//  AuthView.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-16.
//

import SwiftUI

struct AuthView: View {
    
    @State private var currentViewShowing: String = "login" // login || signup
    
    var body: some View {
        
        if (currentViewShowing == "login") {
            LoginView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.light)
        } else {
            SignupView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
        
    }
}

#Preview {
    AuthView()
}

//
//  ProfileView.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-19.
//

import SwiftUI

struct ProfileView: View {
    
    var userProfile: UserProfile
    
    var body: some View {
        VStack {
            // Display user profile information
            Text("Username: \(userProfile.username)")
            Text("Email: \(userProfile.email)")
            Text("XP: \(userProfile.xp)")
            Text("Level: \(userProfile.level)")
            
            // Display workout history
            Text("Workout History:")
            List(userProfile.workoutHistory, id: \.self) { workout in
                Text("Exercise: \(workout.exerciseType), Sets: \(workout.sets), Reps: \(workout.reps), Duration: \(workout.duration)")
            }
        }
    }
}

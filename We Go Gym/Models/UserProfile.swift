//
//  UserProfile.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-19.
//

import Foundation

struct UserProfile {
    var uid: String
    var username: String
    var email: String
    var avatarURL: String?
    var workoutHistory: [Workout]
    var xp: Int
    var level: Int
    
    var friends: [String] // Array of friends [UIDs]
}

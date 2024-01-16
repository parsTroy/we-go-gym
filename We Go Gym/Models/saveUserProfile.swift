//
//  saveUserProfile.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-19.
//

import Foundation
import FirebaseFirestore

// Save user profile
func saveUSerProfile(userProfile: UserProfile) {
    let db = Firestore.firestore()
    db.collection("users").document(userProfile.uid).setData([
        "username": userProfile.username,
        "email": userProfile.email,
        "avatarURL": userProfile.avatarURL ?? "",
        "xp": userProfile.xp,
        "level": userProfile.level,
        "workoutHistory": userProfile.workoutHistory.map { workout in
        [
            "exerciseType": workout.excerciseType,
            "duration": workout.duration,
            "sets": workout.sets,
            "reps": workout.reps,
            "date": Timestamp(date: workout.date),
        ]},
    ])
}

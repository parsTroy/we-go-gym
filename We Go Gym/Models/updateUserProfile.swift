//
//  updateUserProfile.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-19.
//

import Foundation
import FirebaseFirestore

func updateUserProfile(uid: String, newXP: Int, newLevel: Int, newWorkout: Workout, completion: @escaping (Error?) -> Void) {
    let db = Firestore.firestore()
    db.collection("users").document(uid).updateData([
        "xp": newXP,
        "level": newLevel,
        "workoutHistory": FieldValue.arrayUnion([
            [
                "exerciseType": newWorkout.excerciseType,
                "duration": newWorkout.duration,
                "sets": newWorkout.sets,
                "reps": newWorkout.reps,
                "date": Timestamp(date: newWorkout.date),
        ]])
    ]) { error in
        if let error = error {
            // Handle error
            completion(error)
        } else {
            // Update successful
            completion(nil)
        }
    }
}

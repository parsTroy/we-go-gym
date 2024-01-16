//
//  Workout.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-19.
//

import Foundation

struct Workout: Hashable {
    var exerciseType: String
    var duration: TimeInterval
    var sets: Int
    var reps: Int
    var date: Date
}

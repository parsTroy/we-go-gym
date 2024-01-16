//
//  fetchUserProfile.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-19.
//

import Foundation
import FirebaseFirestore

func fetchUserProfile(uid: String, completion: @escaping (UserProfile?) -> Void) {
    let db = Firestore.firestore()
    db.collection("users").document(uid).getDocument { (document, error) in
        if let document = document, document.exists {
            let data = document.data()
            //Parse data into UserProfile model
            // Call the completion handler
        } else {
            // Handle error or no document found
            completion(nil)
        }
    }
}

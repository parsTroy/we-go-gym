//
//  sendFriendRequest.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-19.
//

import Foundation
import FirebaseFirestore

func sendFriendRequest(senderUID: String, receiverUID: String, completion: @escaping (Error?) -> Void) {
    let db = Firestore.firestore()
    let requestRef = db.collection("FriendRequests").addDocument(data: [
        "senderUID": senderUID,
        "receiverUID": receiverUID,
        "status": "pending",
        "timestamp": FieldValue.serverTimestamp()
    ])
    requestRef.getDocument { (document, error) in
        if let error = error {
            completion(error)
        } else {
            completion(nil)
        }
    }
}

func respondToFriendRequest(requestID: String, status: FriendRequestStatus, completion: @escaping (Error?) -> Void) {
    let db = Firestore.firestore()
    let requestRef = db.collection("fiendRequests").document(requestID)
    requestRef.updateData(["status": status]) { error in
        if let error = error {
            completion(error)
        } else {
            completion(nil)
        }
    }
}

func acceptFriendRequest(senderUID: String, receiverUID: String, completion: @escaping (Error?) -> Void) {
    let db = Firestore.firestore()
    
    // Update senders friendlist
    db.collection("users").document(senderUID).updateData([
        "friends": FieldValue.arrayUnion([receiverUID])
    ])
    
    // Update receivers friendlist
    db.collection("users").document(receiverUID).updateData([
        "friends": FieldValue.arrayUnion([senderUID])
    ])
    
    completion(nil)
}

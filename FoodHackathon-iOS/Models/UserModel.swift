//
//  UserModel.swift
//  FoodHackathon-iOS
//
//  Created by Steven Yu on 10/21/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct UserModel: Codable, Identifiable {
    @DocumentID var id: String?
    var displayName: String
    var phoneNumber: String
    var crops: [Crop]
    var position: GeoPoint
    
    enum CodingKeys: String, CodingKey {
        case id
        case displayName = "display_name"
        case phoneNumber = "phone_number"
        case crops
        case position
    }
}

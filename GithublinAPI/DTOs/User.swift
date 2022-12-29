//
//  User.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 17.09.2022.
//

import Foundation
public struct User: Decodable, Equatable {
    
    public enum CodingKeys: String, CodingKey {
        case username = "login"
        case avatarphoto = "avatar_url"
    }
    
    public let username:String
    public let avatarphoto:URL
}

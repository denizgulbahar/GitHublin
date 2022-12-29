//
//  User.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 17.09.2022.
//

import Foundation

public struct User: Decodable,Equatable {
    
    public enum CodingKeys: String, CodingKey {
        case login
        case avatarphoto = "avatar_url"
        case repositories = "repos_url"
    }
    
    public let login:String
    public let avatarphoto:URL
    public let repositories:String
}

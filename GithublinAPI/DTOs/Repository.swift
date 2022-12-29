//
//  Rrepository.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 17.09.2022.
//

import Foundation


public struct Repository: Decodable,Equatable {
    
    public enum CodingKeys: String, CodingKey {
    
        case name
        case description
        case starcount = "stargazers_count"
        case issuescount = "open_issues_count"
        case forkscount = "forks_count"
        case language
        case owner
    }
    
    public let name: String
    public let description: String?
    public let starcount:Int
    public let forkscount:Int
    public let issuescount:Int
    public var language:String?
    public let owner: User
}

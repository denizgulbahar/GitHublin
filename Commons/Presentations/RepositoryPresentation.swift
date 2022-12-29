//
//  RepositoryPresentation.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 18.09.2022.
//

import Foundation
final class RepositoryPresentation: NSObject {
    
    let name: String
    let username: String
    let avatarphoto:URL
    let detail: String
    let starCount:Int
    let language:String
    
    init(name: String, username: String, avatarphoto:URL, detail:String, starCount:Int, language:String) {
        self.name = name
        self.detail = detail
        self.username = username
        self.avatarphoto = avatarphoto
        self.language = language
        self.starCount = starCount
        super.init()
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? RepositoryPresentation else { return false }
        return self.name == other.name && self.detail == other.detail && self.username == other.username && self.avatarphoto == other.avatarphoto && self.language == other.language && self.starCount == other.starCount
    }

}

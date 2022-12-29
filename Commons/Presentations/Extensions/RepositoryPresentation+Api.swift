//
//  RepositoryPresentation+Api.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 18.09.2022.
//

import Foundation

extension RepositoryPresentation {
    
    convenience init(repository: Repository) {
        self.init(name: repository.name, username: repository.owner.username, avatarphoto: repository.owner.avatarphoto , detail: repository.description ?? "" , starCount: repository.starcount, language: repository.language ?? "")
        
        
    }
}

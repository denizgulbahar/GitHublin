//
//  DetailsPresentation+Api.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 19.09.2022.
//

import Foundation
extension DetailsPresentation {
    init(repository:Repository) {
        self.init(repositoryName: repository.name, username: repository.owner.username, avatarphoto: repository.owner.avatarphoto, forkCount: repository.forkscount, starCount: repository.starcount,issuesCount: repository.issuescount)
        
    }
}

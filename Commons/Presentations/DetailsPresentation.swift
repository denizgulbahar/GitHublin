//
//  DetailsPresentation.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 19.09.2022.
//

import Foundation
struct DetailsPresentation: Equatable {
    let repositoryName: String
    let username: String
    let avatarphoto:URL
    let forkCount:Int
    let starCount:Int
    let issuesCount:Int
}

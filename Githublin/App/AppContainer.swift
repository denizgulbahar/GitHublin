//
//  AppContainer.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 16.09.2022.
//

import Foundation

let app = AppContainer()

final class AppContainer {
    
    let router = AppRouter()
    let service = SearchService()
}

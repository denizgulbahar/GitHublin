//
//  SearchBuilder.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 16.09.2022.
//

import UIKit

final class SearchBuilder {
    
    static func make() -> SearchViewController {
        let storyboard = UIStoryboard(name: "Search", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
        viewController.viewModel = SearchViewModel(service: app.service)
        return viewController
    }
}

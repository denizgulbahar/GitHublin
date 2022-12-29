//
//  DetailBuilder.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 19.09.2022.
//

import Foundation
import UIKit

final class DetailsBuilder {
    
    static func make(with viewModel: DetailsViewModelProtocol) -> DetailsViewController {
        let storyboard = UIStoryboard(name: "Details", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        viewController.viewModel = viewModel
        return viewController
    }
}

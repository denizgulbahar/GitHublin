//
//  DetailContracts.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 19.09.2022.
//

import Foundation
import UIKit

protocol DetailsViewModelDelegate: AnyObject {
    func showDetail(_ presentation: DetailsPresentation)
}

protocol DetailsViewModelProtocol {
    var delegate: DetailsViewModelDelegate? { get set }
    func load()
    func cellConfigure(indexPath: IndexPath, details:DetailsPresentation, detailsTableView:UITableView) -> UITableViewCell
}

protocol SpecialTableViewCellProtocol {
    var delegate:SpecialTableViewCellDelegate? {get set }
}
protocol SpecialTableViewCellDelegate: AnyObject {
    func  showRepository(_ presentation: DetailsPresentation)
}

protocol TypesTableViewCellProtocol {
    var delegate:SpecialTableViewCellDelegate? {get set }
}
protocol TypesTableViewCellDelegate: AnyObject {
    func fetchIssues(_ presentation:DetailsPresentation)
    func fetchRequests()
    func fetchMore()
    func fetchBrowse()
    func fetchCommits()
}


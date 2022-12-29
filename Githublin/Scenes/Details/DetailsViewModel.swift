//
//  DetailsViewModel.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 20.09.2022.
//

import Foundation
import UIKit

final class DetailsViewModel: DetailsViewModelProtocol {
    
    weak var delegate: DetailsViewModelDelegate?
    private var presentation: DetailsPresentation!
    
    init(repository: Repository) {
        self.presentation = DetailsPresentation(repository: repository)
        
    }
    
    func load() {
        delegate?.showDetail(presentation)
    }
    
    func cellConfigure(indexPath: IndexPath, details:DetailsPresentation, detailsTableView:UITableView) -> UITableViewCell {
        if indexPath.row < 1 {
            let cell = detailsTableView.dequeueReusableCell(withIdentifier: "SpecialTableViewCell", for: indexPath) as! SpecialTableViewCell
            cell.showRepository(details)
            return cell
        }
        if  indexPath.row < 4 {
            let cell = detailsTableView.dequeueReusableCell(withIdentifier: "TypesTableViewCell", for: indexPath) as! TypesTableViewCell
            if indexPath.row < 2 {
                cell.fetchIssues(details)
                return cell
            }
            if indexPath.row < 3 {
                cell.fetchRequests()
                return cell
            }
            cell.fetchMore()
            return cell
        }
        if indexPath.row < 5 {
            let cell = detailsTableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath)
            return cell
        }
        
        if  indexPath.row < 7 {
            let cell = detailsTableView.dequeueReusableCell(withIdentifier: "TypesTableViewCell", for: indexPath) as! TypesTableViewCell
            if indexPath.row < 6 {
                cell.fetchBrowse()
                return cell
            }
                cell.fetchCommits()
                return cell
            }
        
        if indexPath.row < 8 {
            let cell = detailsTableView.dequeueReusableCell(withIdentifier: "ReadmeTableViewCell", for: indexPath)
            return cell
        }
        let cell = detailsTableView.dequeueReusableCell(withIdentifier: "RepoTableViewCell", for: indexPath) as! RepoTableViewCell
        cell.repoLabel.text = details.repositoryName
        return cell
    }
    
   
}

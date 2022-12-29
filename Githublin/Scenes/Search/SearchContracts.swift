//
//  SearchContracts.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 16.09.2022.
//

import Foundation


protocol SearchViewModelProtocol {
    var delegate: SearchViewModelDelegate? { get set }
    var searchtext:String {get set}
    func load()
    func selectRepository(at index: Int)
    
}

enum SearchViewModelOutput: Equatable {
    case showRepository([RepositoryPresentation])
}

enum SearchViewRoute {
case details(DetailsViewModelProtocol)
}

protocol SearchViewModelDelegate: AnyObject {
    func handleViewModelOutput(_ output: SearchViewModelOutput)
    func navigate(to route: SearchViewRoute)
}

protocol RepositoryTableViewCellProtocol {
    var delegate:RepositoryTableViewCellDelegate? {get set }
}
protocol RepositoryTableViewCellDelegate: AnyObject {
    func  showRepository(_ presentation: RepositoryPresentation)

}



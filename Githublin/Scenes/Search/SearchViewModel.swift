//
//  SearchViewModel.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 18.09.2022.
//

import Foundation
final class SearchViewModel:SearchViewModelProtocol {
    
    var searchtext: String = ""
    
    weak var delegate: SearchViewModelDelegate?
    
    private let service: SearchServiceProtocol
    
    var repository: [Repository] = []
    
    init(service: SearchServiceProtocol) {
        self.service = service
    }
    
    func load() {
        
        service.fetchSearchResults(searchtext:searchtext) { [weak self] (result) in
                guard let self = self else { return }
                switch result {
                case .success(let response):
                        self.repository = response.items
                        let presentations = response.items.map({ RepositoryPresentation(repository:$0) })
                        self.notify(.showRepository(presentations))
                case .failure(let error):
                    print(error)
                }
                
            }
        
    }
    
    func selectRepository(at index: Int) {
        let repository = repository[index]
        let viewModel = DetailsViewModel(repository: repository)
        delegate?.navigate(to: .details(viewModel))
        
    }
    private func notify(_ output: SearchViewModelOutput) {
        delegate?.handleViewModelOutput(output)
    }
    
    
}

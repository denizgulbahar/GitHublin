//
//  ViewController.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 16.09.2022.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet private weak var SearchBar: UISearchBar!
    
    @IBOutlet private weak var tableView: UITableView!

    private var repository: [RepositoryPresentation] = []
    
    var viewModel:SearchViewModelProtocol = SearchViewModel(service: app.service)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
    }
}

extension SearchViewController:SearchViewModelDelegate {
    func handleViewModelOutput(_ output: SearchViewModelOutput) {
        switch output {
        case .showRepository(let repository):
            self.repository = repository
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    func navigate(to route: SearchViewRoute) {
        switch route {
        case .details(let viewModel):
            let viewController = DetailsBuilder.make(with: viewModel)
            show(viewController, sender: nil)
        }
    }
}

extension SearchViewController:UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        viewModel.load()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        viewModel.searchtext = ""
        viewModel.load()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        let searchtext = searchText.isEmpty ? "": searchText
            viewModel.searchtext = searchtext
    
    }
    
}


extension SearchViewController:UITableViewDelegate,UITableViewDataSource {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repository.count
    
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! RepositoryTableViewCell
            let repo = repository[indexPath.row]
            cell.showRepository(repo)
            return cell

    
}

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: false)
    viewModel.selectRepository(at: indexPath.row)
}

func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
}


}





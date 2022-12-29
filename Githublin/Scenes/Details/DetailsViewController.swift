//
//  DetailsViewController.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 19.09.2022.
//

import UIKit

final class DetailsViewController: UIViewController {

    
    @IBOutlet weak var detailsTableView: UITableView!
    
    private var details:DetailsPresentation!
    
    var viewModel: DetailsViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.load()
    }

}
extension DetailsViewController:DetailsViewModelDelegate {
    func showDetail(_ presentation: DetailsPresentation) {
        self.details = presentation
    }
}


extension DetailsViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    viewModel.cellConfigure(indexPath: indexPath, details: details, detailsTableView: detailsTableView)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row < 1 {
           return 200
        }
        if indexPath.row < 8 {
            return 70
        }
        return 100
    }
    
    
}

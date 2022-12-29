//
//  TypesTableViewCell.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 20.09.2022.
//

import UIKit

class TypesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var partName: UILabel!
    @IBOutlet weak var passButton: UIButton!
    @IBOutlet weak var partCount: UILabel!
    
}
    extension TypesTableViewCell:TypesTableViewCellDelegate {
    
        func fetchIssues(_ presentation:DetailsPresentation) {
        icon.image = UIImage(systemName: "smallcircle.filled.circle")
        partName.text = "Issues"
        passButton.setImage(UIImage(systemName: "chevron.forward"), for: .normal)
        partCount.text = String(presentation.issuesCount)
    }
    func fetchRequests() {
        icon.image = UIImage(systemName: "arrowshape.turn.up.left")
        partName.text = "Pull Requests"
        passButton.setImage(UIImage(systemName: "chevron.forward"), for: .normal)
        partCount.text = "0"
    }
    
    func fetchMore() {
        icon.image = UIImage(systemName: "ellipsis")
        partName.text = "More"
        passButton.setImage(UIImage(systemName: "chevron.up"), for: .normal)
        partCount.text = ""
    }
    
    func fetchBrowse() {
        icon.image = UIImage(systemName: "folder")
        partName.text = "Browse code"
        passButton.setImage(UIImage(systemName: "chevron.forward"), for: .normal)
        partCount.text = ""
    }
    
    func fetchCommits() {
        icon.image = UIImage(systemName: "slider.horizontal.3")
        partName.text = "Commits"
        passButton.setImage(UIImage(systemName: "chevron.forward"), for: .normal)
        partCount.text = ""
    }
    
    
}

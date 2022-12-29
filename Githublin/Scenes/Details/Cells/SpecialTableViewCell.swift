//
//  SpecialTableViewCell.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 20.09.2022.
//

import UIKit
import SDWebImage

class SpecialTableViewCell: UITableViewCell {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var forkCount: UILabel!
    @IBOutlet weak var starCount: UILabel!
    @IBOutlet weak var repositoryNameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    
}

extension SpecialTableViewCell:SpecialTableViewCellDelegate {
    func showRepository(_ presentation: DetailsPresentation) {
        avatarImage.sd_setImage(with: presentation.avatarphoto)
        avatarImage.layer.cornerRadius = (avatarImage.frame.size.width/2)
        repositoryNameLabel.text = presentation.repositoryName
        starCount.text = String(presentation.starCount)
        forkCount.text = String(presentation.forkCount)
        usernameLabel.text = presentation.username
        
    }
    
    
}

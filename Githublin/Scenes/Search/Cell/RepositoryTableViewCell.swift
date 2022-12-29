//
//  RepositoryTableViewCell.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 19.09.2022.
//

import UIKit
import SDWebImage

final class RepositoryTableViewCell: UITableViewCell {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var repositoryLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
}
extension RepositoryTableViewCell:RepositoryTableViewCellDelegate {
    func showRepository(_ presentation: RepositoryPresentation) {
        avatarImage.sd_setImage(with: presentation.avatarphoto)
        avatarImage.layer.cornerRadius = avatarImage.frame.size.width/2
        repositoryLabel.text = presentation.name
        descriptionLabel.text = presentation.detail
        starLabel.text = String(presentation.starCount)
        languageLabel.text = presentation.language
        usernameLabel.text = presentation.username
        
    }
    
    
}
 


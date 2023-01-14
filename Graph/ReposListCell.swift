//
//  ReposListCell.swift
//  Graph
//
//  Created by Иван Захаров on 13.01.2023.
//

import Foundation
import UIKit

protocol ReposListCellDelegate: AnyObject {
    func starTapped(for cell: ReposListCell)
}

class ReposListCell: UITableViewCell {
    
    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var starCount: UILabel!
    @IBOutlet weak var starButton: UIButton!
    
    weak var delegate: ReposListCellDelegate?
    
    var repositoryDetail: GraphAPI.RepositoryDetail! {
        didSet {
            repoName.text = repositoryDetail.nameWithOwner
            starCount.text = "\(repositoryDetail.stargazers.totalCount)"
            
            if repositoryDetail.viewerHasStarred {
                starButton.setImage(#imageLiteral(resourceName: "ic_full_star"), for: .normal)
            } else {
                starButton.setImage(#imageLiteral(resourceName: "ic_empty_star"), for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        starButton.addTarget(self, action: #selector(starTapped), for: .touchUpInside)
    }
    
    @objc func starTapped() {
        delegate?.starTapped(for: self)
    }
}

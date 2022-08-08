//
//  NewsFeedCollectionViewCell.swift
//  InstaSearchView
//
//  Created by 윤여진 on 2022/08/08.
//

import UIKit

class NewsFeedCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumnailImageView.image = nil
    }
    
    func configure(_ imageName: String) {
        thumnailImageView.image = UIImage(named: imageName)
    }
    
}

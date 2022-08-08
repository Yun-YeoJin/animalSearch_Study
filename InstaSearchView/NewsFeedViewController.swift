//
//  NewsFeedViewController.swift
//  InstaSearchView
//
//  Created by 윤여진 on 2022/08/08.
//

import UIKit

class NewsFeedViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        if let flowlayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowlayout.estimatedItemSize = .zero
        }
        
        
    }


}

extension NewsFeedViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        24
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsFeedCollectionViewCell", for: indexPath) as? NewsFeedCollectionViewCell else { return UICollectionViewCell() }
        
        let imageName = "animal\(indexPath.item + 1)"
        cell.configure(imageName)
        
        return cell
    }
    
}

extension NewsFeedViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.bounds.width
        let height = width * 3/4 + 60
        return CGSize(width: width, height: height)
    }
}

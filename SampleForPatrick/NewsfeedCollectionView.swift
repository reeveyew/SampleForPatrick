//
//  NewsfeedCollectionView.swift
//  SampleForPatrick
//
//  Created by Reeve Yew on 18/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension NewsfeedTableViewCell {
    
    func setupCollectionView()
    {
        //setup uislider
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        layout.itemSize = CGSize(width: x/5, height: 80)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        //setup collectionview
        let frame = CGRectMake(0, 100, x, 100)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        self.addSubview(collectionView)
        collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        collectionView.xSize(width: nil, height: 100)
        collectionView.xPinEdgesToSuperview(top: nil, right: 0, bottom: 40, left: 0)
        collectionView.xPinTop(toBottomOfView: refContentContainer, offset: 0)
        
        self.collectionView.backgroundColor = UIColor.clearColor()
        self.collectionView.collectionViewLayout = layout
        self.collectionView.userInteractionEnabled = true
        self.collectionView.showsHorizontalScrollIndicator = false
        self.collectionView.allowsSelection = true

    }

}
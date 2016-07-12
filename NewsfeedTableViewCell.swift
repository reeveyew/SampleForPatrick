//
//  NewsfeedTableViewCell.swift
//  SampleForPatrick
//
//  Created by Reeve Yew on 11/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit
import PureLayout

class NewsfeedTableViewCell: UITableViewCell {

    let imageView_CoverPhoto = UIImageView()
    let imageSlider = UISlider()
    var collectionView :UICollectionView!
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //setup cover photo
        imageView_CoverPhoto.backgroundColor = UIColor.yellowColor()
        self.addSubview(imageView_CoverPhoto)
        

        imageView_CoverPhoto.autoSetDimension(.Height, toSize: 150)
        imageView_CoverPhoto.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
        imageView_CoverPhoto.autoPinEdgeToSuperviewEdge(.Top, withInset: 0)
        imageView_CoverPhoto.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
       
        
        //setup uislider
        //
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        layout.itemSize = CGSize(width: 100, height: 100)
        
        
        
        let frame = CGRectMake(0, 100, x, 100)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        
        collectionView.autoSetDimension(.Height, toSize: 100)
        collectionView.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
        collectionView.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
        collectionView.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 0)
        collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = UIColor.clearColor()
        
        self.addSubview(collectionView)
        imageView_CoverPhoto.autoPinEdge(.Bottom, toEdge: .Top, ofView: collectionView)
    
        self.collectionView.collectionViewLayout = layout
//        self.collectionView.scrollEnabled = true
        self.collectionView.userInteractionEnabled = true
        print(collectionView.frame)

        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

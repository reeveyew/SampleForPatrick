//
//  SelectPhotoCollectionView.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 18/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension SelectPhotoViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    //number of collection view contents horizontally
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 10
    }
    
    //number of collection view contents vertically
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 10
    }
    
    

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("selectphotocell", forIndexPath: indexPath)
        cell .backgroundColor = UIColor.randomColor()
        
        let imageview = UIImageView()
        cell.contentView.addSubview(imageview)
        
        imageview.xPinEdgesToSuperview(top: 0, right: 0, bottom: 0, left: 0)
        imageview.backgroundColor = UIColor.greenColor()
        let image:UIImage = UIImage(named:"beach1.jpg")!
        imageview.image = image
        
        return cell
    }
    
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: 80, height: 80)// The size of one cell
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }
    
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 2
    }

}


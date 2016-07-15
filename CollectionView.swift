//
//  CollectionView.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 14/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension DetailTimeline: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    //number of collection view contents horizontally
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //number of collection view contents vertically
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 5
    }
    
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! DetailedTimelineCollectionViewCell
        cell.backgroundColor = UIColor.clearColor()
//        cell.contentView.backgroundColor = UIColor.greenColor()
//        cell.theImages.image = Images_CollectionView[indexPath.row]
        
//        let CollectionView_Image=UIView()
//        CollectionView_Image.backgroundColor=UIColor(patternImage:UIImage(named:"world.png")!)
//        cell.backgroundVi=CollectionView_Image
        
        cell.theImages.image = self.imageArray [indexPath.row]
        
        return cell
    }
    
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: 100, height: 100)// The size of one cell
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }
    
//    func collectionView(collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                               minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
//        return 20
//    }
//    
//    func collectionView(collectionView: UICollectionView, layout
//        collectionViewLayout: UICollectionViewLayout,
//        minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
//        return 20
//    }

    
//    func collectionViewSize(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        return CGSize(width: 10, height: 500)
//    }
//    
//    
//}

//extension CGFloat {
//    static func random() -> CGFloat {
//        return CGFloat(arc4random()) / CGFloat(UInt32.max)
//    }
//}
//
//extension UIColor {
//    static func randomColor() -> UIColor {
//        return UIColor(red:   .random(),
//                       green: .random(),
//                       blue:  .random(),
//                       alpha: 1.0)
//}
//}
}
//
//  CollectionView.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 14/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension DetailedTimeline: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

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
//        let con = CatService(test:"test")
//        
//        let temp = NSUserDefaults()
//        let  number = temp.integerForKey("num_of_images")
//        
//        var title_array:Array<String> = con.imageNamesForCategoryAtIndex(number)
//        
//        var string:String = title_array[indexPath.row]
//        
//        print("indexPath.row \(indexPath.row)");
//        print("string is \(string)")

//        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("firstCollectionCell", forIndexPath: indexPath)
        
        let imageview:UIImageView=UIImageView(frame: CGRectMake(5, 5, 100, 100))
        let image:UIImage = UIImage(named:"paris.jpg")!
        imageview.image = image
        self.view.addSubview(imageview)
        cell.contentView.addSubview(imageview)
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
        return 30
    }
    
    func collectionView(collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 30
    }

    
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
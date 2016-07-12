//
//  ControllerView.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 12/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

class NewsfeedViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UIScrollViewDelegate{

    var collectionView : UICollectionView!
    var scrollView: UIScrollView!
    override func viewDidLoad() {
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        layout.itemSize = CGSize(width: 100, height: 100)
        
        let frame = CGRectMake(0, 100, self.view.frame.size.width, 100)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = UIColor.clearColor()
        
        self.view.addSubview(collectionView)
        
        
        self.collectionView.collectionViewLayout = layout
        self.collectionView.scrollEnabled = true
        self.collectionView.userInteractionEnabled = true
        print(collectionView.frame)

    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 10
    }
    

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
        cell .backgroundColor = UIColor.randomColor()
        return cell
    }
    
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 100, height: 100) // The size of one cell
    }
    
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func randomColor() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}

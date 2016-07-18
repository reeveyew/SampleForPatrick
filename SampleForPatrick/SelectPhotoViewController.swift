//
//  SelectPhotoViewController.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 18/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit
import PureLayout

class SelectPhotoViewController: UIViewController {
    var colletionView_SelectPhoto : UICollectionView!
    let view_bottom = UIView()
    
    
    override func viewDidLoad() {
        setupCollectionViewSelectPhoto()
        setupViewBottom()
    }
    
    func setupCollectionViewSelectPhoto() {
        //setup uislider
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Vertical
        layout.itemSize = CGSize(width: 100, height: 100)
        //setup collectionview
        let frame = CGRectMake(0, 100, x, 100)
        colletionView_SelectPhoto = UICollectionView(frame: frame, collectionViewLayout: layout)
        self.view .addSubview(colletionView_SelectPhoto)
        colletionView_SelectPhoto.xPinEdgesToSuperview(top: 0, right: 0, bottom: nil, left: 0)
        colletionView_SelectPhoto.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "selectphotocell")
        colletionView_SelectPhoto.backgroundColor = UIColor.blackColor()
        colletionView_SelectPhoto.dataSource = self
        colletionView_SelectPhoto.delegate = self
        self.colletionView_SelectPhoto.collectionViewLayout = layout
        self.colletionView_SelectPhoto.userInteractionEnabled = true
        print(colletionView_SelectPhoto.frame)
    }
    
    func setupViewBottom(){
        view_bottom.backgroundColor = UIColor.greenColor()
        self.view.addSubview(view_bottom)
        view_bottom.xPinTop(colletionView_SelectPhoto, offset: nil)
        view_bottom.xPinEdgesToSuperview(top: nil, right: 0, bottom: 0, left: 0)
    }
}

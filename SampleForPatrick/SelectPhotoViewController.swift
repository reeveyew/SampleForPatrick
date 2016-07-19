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
        self.view.addSubview(colletionView_SelectPhoto)
        colletionView_SelectPhoto.xPinEdgesToSuperview(top: 0, right: 0, bottom: nil, left: 0)
        colletionView_SelectPhoto.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "selectphotocell")
        colletionView_SelectPhoto.backgroundColor = UIColor.whiteColor()
        colletionView_SelectPhoto.layer.borderColor = UIColor.redColor().CGColor
        colletionView_SelectPhoto.dataSource = self
        colletionView_SelectPhoto.delegate = self
        self.colletionView_SelectPhoto.collectionViewLayout = layout
        self.colletionView_SelectPhoto.userInteractionEnabled = true
        print(colletionView_SelectPhoto.frame)
    }
    
    func setupViewBottom(){
        view_bottom.backgroundColor = UIColor.lightTextColor()
        self.view.addSubview(view_bottom)
        view_bottom.autoPinEdge(.Top, toEdge: .Bottom, ofView: colletionView_SelectPhoto)
        view_bottom.xPinEdgesToSuperview(top: nil, right: 0, bottom: 0, left: 0)
        view_bottom.xSize(width: nil, height: 1000)
        setupUploadButton()
    }
    
    func setupUploadButton(){
        let button_Upload = UIButton.newAutoLayoutView()
        button_Upload.backgroundColor = UIColor.darkTextColor()
        button_Upload.setTitle("Upload", forState: .Normal)
        self.view.addSubview(button_Upload)
        button_Upload.xSize(width: 120, height: 50)
        button_Upload.xPinEdgesToSuperview(top: nil, right: nil, bottom: 10, left: nil)
        button_Upload.xAlignVertical(toView: view_bottom)
        button_Upload.xAlignHorizontal(toView: view_bottom)
        
    }
}

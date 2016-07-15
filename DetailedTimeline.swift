//
//  HomeTimeline.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 13/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit
import PureLayout

class DetailTimeline: UIViewController{
    let imageView_BackgroundPhoto = UIImageView()
    let view_UpperRightContainer = UIView()
    let view_UpperLeftContainer = UIView()
    let view_LowerRightContainer = UIView()
    let view_LowerLeftContainer = UIView()
    var imageArray = [UIImage(named: "paris.jpg")!, UIImage(named: "mountain.jpg")!, UIImage(named: "beach.jpg")!]
    var collectionView : UICollectionView!
    var tableView = UITableView()
    //MARK: halo
    //MARK:- COLLECTION VIEW
    //TODO: put in pictures for imageview
    //FIXME: collection delegate
    override func viewDidLoad() {
        super.viewDidLoad()
        display()
    }
    
    func display(){
        self.view .addSubview(imageView_BackgroundPhoto)
        self.view .addSubview(view_UpperRightContainer)
        self.view .addSubview(view_UpperLeftContainer)
        self.view .addSubview(view_LowerRightContainer)
        self.view .addSubview(view_LowerLeftContainer)
        setupBackgroundPhoto()
        setupUpperRightContainer()
        setupUpperLeftContainer()
        setupLowerRightContainer()
        setupLowerLeftContainer()
    }
    
    func setupBackgroundPhoto(){
        imageView_BackgroundPhoto.image = UIImage(named: "paris.jpg")
        imageView_BackgroundPhoto.autoSetDimension(.Height, toSize: 300)
        imageView_BackgroundPhoto.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
        imageView_BackgroundPhoto.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
        imageView_BackgroundPhoto.autoPinEdgeToSuperviewEdge(.Top, withInset: 0)
        imageView_BackgroundPhoto.autoPinEdge(.Bottom, toEdge: .Top, ofView: view_UpperLeftContainer)
    }
    
   func setupUpperRightContainer(){
        view_UpperRightContainer.backgroundColor = UIColor.darkGrayColor()
        view_UpperRightContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
        view_UpperRightContainer.autoPinEdge(.Left, toEdge: .Right, ofView: view_UpperLeftContainer)
        view_UpperRightContainer.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
        view_UpperLeftContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
        view_UpperRightContainer.autoMatchDimension(.Height, toDimension: .Height, ofView: view_LowerRightContainer, withMultiplier: 0.2)
        Content_UpperRightContainer()
        
    }
    
    func setupUpperLeftContainer(){
        view_UpperLeftContainer.backgroundColor = UIColor.whiteColor()
        view_UpperLeftContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
        view_UpperLeftContainer.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
       view_UpperLeftContainer.autoPinEdge(.Right, toEdge: .Left, ofView: view_UpperRightContainer)
         view_UpperLeftContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: imageView_BackgroundPhoto, withMultiplier: 0.4)
        Content_UpperLeftContainer()
    }
    
    func setupLowerRightContainer(){
        view_LowerRightContainer.backgroundColor = UIColor.darkTextColor()
        view_LowerRightContainer.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
        view_LowerRightContainer.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 0)
        view_LowerRightContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: view_UpperRightContainer)
        view_LowerRightContainer.autoPinEdge(.Top, toEdge: .Top, ofView: view_LowerLeftContainer)
        content_LowerRightContainer()
    }
    
    func setupLowerLeftContainer(){
        view_LowerLeftContainer.backgroundColor = UIColor.lightGrayColor()
        view_LowerLeftContainer.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
        view_LowerLeftContainer.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 0)
        view_LowerLeftContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: view_UpperLeftContainer)
        view_LowerLeftContainer.autoPinEdge(.Right, toEdge: .Left, ofView: view_LowerRightContainer)
        view_LowerLeftContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: view_UpperLeftContainer)
        configureTableView()
    }
    
    
    func Content_UpperRightContainer(){
        let label_Location = UILabel(frame: CGRectMake(x,y,x,y))
        self.view .addSubview(label_Location)
        label_Location.textAlignment = NSTextAlignment.Center
        label_Location.text = "PARIS, France"
        label_Location.font = UIFont.boldSystemFontOfSize(15)
        label_Location.textColor = UIColor.whiteColor()
        label_Location.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperRightContainer, withOffset: -15)
        label_Location.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperRightContainer, withOffset: -52)
        
        let textfield_Caption = UITextField(frame: CGRectMake(x,y,x,y))
        self.view .addSubview(textfield_Caption)
        textfield_Caption.textAlignment = NSTextAlignment.Left
        textfield_Caption.font = UIFont.systemFontOfSize(10)
        textfield_Caption.attributedPlaceholder = NSAttributedString(string:"Caption goes here...",attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        textfield_Caption.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperRightContainer, withOffset: 5)
        textfield_Caption.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperRightContainer, withOffset: -52)
}
    
    
    func Content_UpperLeftContainer(){
        let label_Day = UILabel(frame: CGRectMake(x,y,x,y))
        self.view .addSubview(label_Day)
        label_Day.textAlignment = NSTextAlignment.Center
        label_Day.text = "Day"
        label_Day.font = UIFont.systemFontOfSize(10)
        label_Day.textColor = UIColor.blackColor()
        label_Day.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperLeftContainer, withOffset: -15)
        label_Day.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperLeftContainer)
        
        
        let label_Number = UILabel(frame: CGRectMake(x,y,x,y))
        self.view .addSubview(label_Number)
        label_Number.textAlignment = NSTextAlignment.Center
        label_Number.text = "5"
        label_Number.font = UIFont.boldSystemFontOfSize(35)
        label_Number.textColor = UIColor.blackColor()
        label_Number.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperLeftContainer, withOffset: 5)
        label_Number.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperLeftContainer)
    }
    
    func content_LowerRightContainer()
    {
        //setup uislider
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Vertical
        layout.itemSize = CGSize(width: 100, height: 100)
        //setup collectionview
        let frame = CGRectMake(0, 100, x, 100)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        self.view .addSubview(collectionView)
        collectionView.autoSetDimension(.Height, toSize: 280)
        collectionView.autoSetDimension(.Width, toSize: 190)
        collectionView.autoAlignAxis(.Horizontal, toSameAxisOfView: view_LowerRightContainer)
        collectionView.autoAlignAxis(.Vertical, toSameAxisOfView: view_LowerRightContainer)
        collectionView.registerClass(DetailedTimelineCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = UIColor.whiteColor()
        collectionView.dataSource = self
        collectionView.delegate = self
        self.collectionView.collectionViewLayout = layout
        self.collectionView.userInteractionEnabled = true
        print(collectionView.frame)
        
    }
       }

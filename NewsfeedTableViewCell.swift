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
    var tableView = UITableView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       
        setupCoverPhoto()
        setupCollectionView()
        setupContentView()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupCoverPhoto()
    {
        //setup cover photo
        imageView_CoverPhoto.backgroundColor = UIColor.clearColor()
        self.addSubview(imageView_CoverPhoto)
        imageView_CoverPhoto.image = UIImage(named:"paris.jpg")
        imageView_CoverPhoto.autoSetDimension(.Height, toSize: 500)
        imageView_CoverPhoto.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
        imageView_CoverPhoto.autoPinEdgeToSuperviewEdge(.Top, withInset: 0)
        imageView_CoverPhoto.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
    }
    
    
    func setupCollectionView()
    {
        //setup uislider
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        layout.itemSize = CGSize(width: 100, height: 100)
        //setup collectionview
        let frame = CGRectMake(0, 100, x, 100)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        self.addSubview(collectionView)
        collectionView.autoSetDimension(.Height, toSize: 100)
        collectionView.autoPinEdgeToSuperviewEdge(.Left, withInset: 1.5)
        collectionView.autoPinEdgeToSuperviewEdge(.Right, withInset: 1.5)
        collectionView.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 75)
        collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = UIColor.clearColor()
        
        
        imageView_CoverPhoto.autoPinEdge(.Bottom, toEdge: .Top, ofView: collectionView)
        
        collectionView.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_CoverPhoto, withOffset: 5.0)
        
        self.collectionView.collectionViewLayout = layout
        self.collectionView.userInteractionEnabled = true
        print(collectionView.frame)

    }
    
    func setupContentView()
    {
        let imageView_Avatar : UIImageView
        imageView_Avatar = UIImageView(frame: CGRectMake(x,y,x,y));
        imageView_Avatar.image = UIImage(named:"avatar.jpg")
        self.addSubview(imageView_Avatar)
        imageView_Avatar.autoPinEdgeToSuperviewEdge(.Left, withInset: 20)
        imageView_Avatar.autoPinEdgeToSuperviewEdge(.Top, withInset: 35)
        imageView_Avatar.autoSetDimension(.Height, toSize: 80)
        imageView_Avatar.autoSetDimension(.Width, toSize: 65)
        
        
        let label_Username = UILabel(frame: CGRectMake(x,y,x,y))
        label_Username.textAlignment = NSTextAlignment.Center
        label_Username.text = "Stephanie Chong"
        label_Username.font.fontWithSize(10)
        label_Username.textColor = UIColor.whiteColor()
        self.addSubview(label_Username)
        label_Username.autoAlignAxis(.Horizontal, toSameAxisOfView: imageView_Avatar, withOffset: -10)
        label_Username.autoAlignAxis(.Vertical, toSameAxisOfView: imageView_Avatar, withOffset: 100)
        
        
        let buttonView_Like : UIButton
        buttonView_Like = UIButton(frame: CGRectMake(x,y,x,y))
        buttonView_Like.setTitle ("Like", forState: .Normal)
        buttonView_Like.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        buttonView_Like.frame = CGRectMake(x,y,x,y)
        self.addSubview(buttonView_Like)
        buttonView_Like.autoAlignAxis(.Horizontal, toSameAxisOfView: label_Username)
        buttonView_Like.autoPinEdgeToSuperviewEdge(.Right, withInset: 20)
        
        
        let imageView_LocationIcon : UIImageView
        imageView_LocationIcon = UIImageView(frame: CGRectMake(x,y,x,y));
        imageView_LocationIcon.image = UIImage(named:"location-icon.png")
        self.addSubview(imageView_LocationIcon)
        imageView_LocationIcon.autoPinEdgeToSuperviewEdge(.Left, withInset: 20)
        imageView_LocationIcon.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 200)
        imageView_LocationIcon.autoSetDimension(.Height, toSize: 80)
        imageView_LocationIcon.autoSetDimension(.Width, toSize: 70)
        
        
        let label_Location = UILabel(frame: CGRectMake(x,y,x,y))
        label_Location.textAlignment = NSTextAlignment.Center
        label_Location.text = "10"
        label_Location.textColor = UIColor.whiteColor()
        self.addSubview(label_Location)
        label_Location.autoAlignAxis(.Horizontal, toSameAxisOfView: imageView_LocationIcon, withOffset: -10)
        label_Location.autoAlignAxis(.Vertical, toSameAxisOfView: imageView_LocationIcon, withOffset: -1)
    }
}

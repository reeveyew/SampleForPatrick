//
//  HomeTimeline.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 13/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit
import PureLayout

class DetailTimeline: UIViewController {
    let imageView_BackgroundPhoto = UIImageView()
    let view_UpperRightContainer = UIView()
    let view_UpperLeftContainer = UIView()
    let view_LowerRightContainer = UIView()
    let view_LowerLeftContainer = UIView()
    
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
    
    func setupLowerRightContainer(){
        view_LowerRightContainer.backgroundColor = UIColor.blackColor()
//        view_LowerRightContainer.autoSetDimension(.Height, toSize: 200)
        view_LowerRightContainer.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
        view_LowerRightContainer.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 0)
        view_LowerRightContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: view_UpperRightContainer)
        view_LowerRightContainer.autoPinEdge(.Top, toEdge: .Top, ofView: view_LowerLeftContainer)
    }
    
    func setupLowerLeftContainer(){
        view_LowerLeftContainer.backgroundColor = UIColor.yellowColor()
        view_LowerLeftContainer.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
        view_LowerLeftContainer.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 0)
        view_LowerLeftContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: view_UpperLeftContainer)
        view_LowerLeftContainer.autoPinEdge(.Right, toEdge: .Left, ofView: view_LowerRightContainer)
        view_LowerLeftContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: view_UpperLeftContainer)
    }

    
    func setupUpperRightContainer(){
        view_UpperRightContainer.backgroundColor = UIColor.blueColor()
        view_UpperRightContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
        view_UpperRightContainer.autoPinEdge(.Left, toEdge: .Right, ofView: view_UpperLeftContainer)
        view_UpperRightContainer.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
        view_UpperLeftContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
        view_UpperRightContainer.autoMatchDimension(.Height, toDimension: .Height, ofView: view_LowerRightContainer, withMultiplier: 0.3)
        
    }
    
    func setupUpperLeftContainer(){
        view_UpperLeftContainer.backgroundColor = UIColor.redColor()
        view_UpperLeftContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
//        view_UpperLeftContainer.autoMatchDimension(.Height, toDimension: .Height, ofView: view_UpperRightContainer)
        view_UpperLeftContainer.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
//        view_UpperLeftContainer.autoPinEdge(.Top, toEdge: .Top, ofView: view_UpperRightContainer)
       view_UpperLeftContainer.autoPinEdge(.Right, toEdge: .Left, ofView: view_UpperRightContainer)
         view_UpperLeftContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: imageView_BackgroundPhoto, withMultiplier: 0.4)
    }
    
       }

//
//  ViewController.swift
//  SampleForPatrick
//
//  Created by Reeve Yew on 11/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

let x = UIScreen.mainScreen().bounds.size.width
let y = UIScreen.mainScreen().bounds.size.height



class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UIScrollViewDelegate {

    var tableView = UITableView()
    
//    var collectionView : UICollectionView!
//    var scrollView: UIScrollView!
//    let imageView_CoverPhoto = UIImageView()
//    let imageSlider = UISlider()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    
        let label_center = UILabel(frame: CGRectMake(x,y,x,y))
        label_center.textAlignment = NSTextAlignment.Center
        label_center.text = "PARIS, FRANCE"
        label_center.textColor = UIColor.whiteColor()
        self.view.addSubview(label_center)
        label_center.autoCenterInSuperview()
        
        
        let imageView_Avatar : UIImageView
        imageView_Avatar = UIImageView(frame: CGRectMake(x,y,x,y));
        imageView_Avatar.image = UIImage(named:"avatar.jpg")
        self.view.addSubview(imageView_Avatar)
        imageView_Avatar.autoPinEdgeToSuperviewEdge(.Left, withInset: 20)
        imageView_Avatar.autoPinEdgeToSuperviewEdge(.Top, withInset: 35)
        imageView_Avatar.autoSetDimension(.Height, toSize: 80)
        imageView_Avatar.autoSetDimension(.Width, toSize: 65)
        
        
        let buttonView_Like : UIButton
        buttonView_Like = UIButton(frame: CGRectMake(x,y,x,y))
        buttonView_Like.setTitle ("Like", forState: .Normal)
        buttonView_Like.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        buttonView_Like.frame = CGRectMake(x,y,x,y)
        self.view.addSubview(buttonView_Like)
        buttonView_Like.autoPinEdgeToSuperviewEdge(.Top, withInset: 30)
        buttonView_Like.autoPinEdgeToSuperviewEdge(.Right, withInset: 20)
        
        
        let imageView_LocationIcon : UIImageView
        imageView_LocationIcon = UIImageView(frame: CGRectMake(x,y,x,y));
        imageView_LocationIcon.image = UIImage(named:"location-icon.png")
        self.view.addSubview(imageView_LocationIcon)
        imageView_LocationIcon.autoPinEdgeToSuperviewEdge(.Left, withInset: 20)
        imageView_LocationIcon.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 200)
        imageView_LocationIcon.autoSetDimension(.Height, toSize: 80)
        imageView_LocationIcon.autoSetDimension(.Width, toSize: 70)
//        imageView_LocationIcon.autoPinEdge(.Top, toEdge: .Bottom, ofView:collectionView(collectionView), numberOfItemsInSection: 1) )
        
        
        let label_Location = UILabel(frame: CGRectMake(x,y,x,y))
        label_Location.textAlignment = NSTextAlignment.Center
        label_Location.text = "10"
        label_Location.textColor = UIColor.whiteColor()
        self.view.addSubview(label_Location)
        label_Location.autoAlignAxis(.Horizontal, toSameAxisOfView: imageView_LocationIcon, withOffset: -8)
        label_Location.autoAlignAxis(.Vertical, toSameAxisOfView: imageView_LocationIcon)
        
    }
    
    
    func configureTableView(){
        tableView = UITableView(frame: CGRectMake(0, 0, x, y))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(NewsfeedTableViewCell.self, forCellReuseIdentifier: "NewsfeedCell")
        self.view.addSubview(tableView)
        tableView.estimatedRowHeight = 60
        tableView.rowHeight = UITableViewAutomaticDimension
        self.automaticallyAdjustsScrollViewInsets = false
        tableView.allowsSelection = false
        self.tableView.reloadData()
    }
    
 
    //number of main cell within the table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NewsfeedCell", forIndexPath: indexPath) as! NewsfeedTableViewCell

        cell.collectionView.delegate = self
        cell.collectionView.dataSource = self
        cell.collectionView.backgroundColor = UIColor.clearColor()
        
        
        return cell
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //number of collection view contents
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
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }
    
    


}


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
    
 
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NewsfeedCell", forIndexPath: indexPath) as! NewsfeedTableViewCell

        cell.collectionView.delegate = self
        cell.collectionView.dataSource = self
        cell.collectionView.backgroundColor = UIColor.greenColor()
        
        
        return cell
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
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }
    
    


}


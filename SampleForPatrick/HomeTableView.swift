
//
//  HomeTableview.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 13/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func configureTableView(){
        let tableView_Newsfeed  = UITableView.newAutoLayoutView()
        
        tableView_Newsfeed.delegate = self
        tableView_Newsfeed.dataSource = self
        tableView_Newsfeed.registerClass(NewsfeedTableViewCell.self, forCellReuseIdentifier: "NewsfeedCell")
        self.view.addSubview(tableView_Newsfeed)
        tableView_Newsfeed.estimatedRowHeight = 60
        tableView_Newsfeed.rowHeight = UITableViewAutomaticDimension
        self.automaticallyAdjustsScrollViewInsets = false
        tableView_Newsfeed.allowsSelection = false
        self.tableView.reloadData()
    }
    
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

}
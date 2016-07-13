
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
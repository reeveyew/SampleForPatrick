
//
//  HomeTableview.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 13/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension DetailedTimeline: UITableViewDataSource, UITableViewDelegate {
    
    func configureTableView(){
        tableView = UITableView(frame: CGRectMake(0, 0, x, y))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(DetailedTimelineTableViewCell.self, forCellReuseIdentifier: "DetailTimelineCell")
        self.view.addSubview(tableView)
        tableView.estimatedRowHeight = 15
        tableView.autoSetDimension(.Height, toSize: 290)
        tableView.autoSetDimension(.Width, toSize: 140)
        tableView.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 10)
        tableView.autoPinEdgeToSuperviewEdge(.Left, withInset: 5)
        tableView.rowHeight = UITableViewAutomaticDimension
        self.automaticallyAdjustsScrollViewInsets = false
        tableView.allowsSelection = false
        self.tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DetailTimelineCell", forIndexPath: indexPath) as! DetailedTimelineTableViewCell
        return cell
    }
    
}
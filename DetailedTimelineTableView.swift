
//
//  HomeTableview.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 13/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension DetailedTimelineViewController: UITableViewDataSource, UITableViewDelegate {
    
    func configureTableView(){
        tableView_DetailedTimeline = UITableView.newAutoLayoutView()
        tableView_DetailedTimeline.delegate = self
        tableView_DetailedTimeline.dataSource = self
        tableView_DetailedTimeline.registerClass(DetailedTimelineTableViewCell.self, forCellReuseIdentifier: "DetailTimelineCell")
        self.view.addSubview(tableView_DetailedTimeline)
        tableView_DetailedTimeline.estimatedRowHeight = 15
        tableView_DetailedTimeline.xSize(width: 140, height: 290)
        tableView_DetailedTimeline.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 10)
        tableView_DetailedTimeline.autoPinEdgeToSuperviewEdge(.Left, withInset: 5)
        tableView_DetailedTimeline.rowHeight = UITableViewAutomaticDimension
        self.automaticallyAdjustsScrollViewInsets = false
        tableView_DetailedTimeline.allowsSelection = false
        self.tableView_DetailedTimeline.reloadData()
    }
    
    //number of rows in the table view
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DetailTimelineCell", forIndexPath: indexPath) as! DetailedTimelineTableViewCell
        return cell
    }
    
}
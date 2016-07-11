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

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: CGRectMake(0, 0, x, y))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(NewsfeedTableViewCell.self, forCellReuseIdentifier: "NewsfeedCell")
        
        self.view.addSubview(tableView)
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NewsfeedCell", forIndexPath: indexPath) as! NewsfeedTableViewCell
        cell.textLabel?.text = "halo"
        
        return cell
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


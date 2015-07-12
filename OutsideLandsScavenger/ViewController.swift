//
//  ViewController.swift
//  OutsideLandsScavenger
//
//  Created by Lynne Okada on 7/11/15.
//  Copyright (c) 2015 Lynne Okada. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarControllerDelegate, UITableViewDataSource {
    
    @IBOutlet weak var scheduleTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scheduleTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.scheduleTableView.rowHeight = 80.0
        
        var times: [String] = ["1:00","2:00","3:00"]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 24
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Swift-TableView Programatically
//
//  Created by Mine on 10/24/15.
//  Copyright (c) 2015 Ximenia. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    var myTableView = UITableView()
    //Array values
    var tableData: [String] = ["Abarth","Acura","Arash","Alfa Romeo","Ariel","Bentley","Bowler"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor .clearColor()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.title = "Table View"
        // Table view programatically
        myTableView = UITableView(frame: CGRect(x: 0,y: 0,width:UIScreen.mainScreen().bounds.width,height:UIScreen.mainScreen().bounds.height))
        myTableView.delegate        = self
        myTableView.dataSource      = self
        myTableView.backgroundColor = UIColor.clearColor()
        myTableView.separatorColor  = UIColor.grayColor()
        myTableView.tableFooterView = UIView()
        myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(myTableView)
        
    }
    
    // MARK: - TableView Delegate
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        cell.textLabel?.text = tableData[indexPath.row]
        cell.separatorInset = UIEdgeInsetsMake(0, 0, cell.frame.size.width, 0)
        cell.layoutMargins = UIEdgeInsetsZero
        cell.preservesSuperviewLayoutMargins = false
        
        //cell.textLabel = toPass
        
        //        if (cell.respondsToSelector("preservesSuperviewLayoutMargins")){
        //            cell.layoutMargins = UIEdgeInsetsZero
        //            cell.preservesSuperviewLayoutMargins = false
        //        }
        
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //  navigationController!.pushViewController(DetailViewController() as UIViewController, animated: true)
        
        //        let selectedCell = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell!
        
        let row = indexPath.row
        let shan = tableData[row]
         println (shan)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


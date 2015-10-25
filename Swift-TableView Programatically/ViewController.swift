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
    var tableData: [String] = ["Apple","orange","pinaple"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView = UITableView(frame: CGRect(x: 0,y: 0,width: UIScreen.mainScreen().bounds.width,height:UIScreen.mainScreen().bounds.height))
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.backgroundColor = UIColor.clearColor()
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
        
        return cell
    }

    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  DetailViewController.swift
//  Swift-TableView Programatically
//
//  Created by Mine on 10/25/15.
//  Copyright (c) 2015 Ximenia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController  {

      var reciveString = String()
        var myTextView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor .whiteColor()
        // Do any additional setup after loading the view.
        
        
        myTextView = UITextView(frame: CGRectMake( 75, 200, UIScreen.mainScreen().bounds.width-150, UIScreen.mainScreen().bounds.height-400))
        myTextView.backgroundColor = UIColor .grayColor()
        myTextView.text = reciveString
        self.view.addSubview(myTextView)
        
        println(reciveString)
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  MemeTableViewController.swift
//  MeMe
//
//  Created by Tanveer Bashir on 11/30/15.
//  Copyright © 2015 Tanveer Bashir. All rights reserved.
//

import UIKit

class MemeTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var meme: [Meme] {
        return (UIApplication.sharedApplication().delegate as! AppDelegate).memes
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(meme)
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
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meme.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("memeCell")!
        let image = meme[indexPath.row]
        //cell.imageView?.image = image.memeImage
        
        cell.textLabel?.text = image.topText
        return cell
    }
}

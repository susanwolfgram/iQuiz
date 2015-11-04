//
//  ViewController.swift
//  iQuiz
//
//  Created by Susan Wolfgram on 11/3/15.
//  Copyright © 2015 Susan Wolfgram. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    let labels = ["Math", "Marvel", "Science"]
    let descriptions = ["Addition & Subtraction", "Superhero Trivia", "Theories and Famous Names"]
    var logoImages = [UIImage]()
    
    
    
    @IBAction func settings(sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Settings", message:
            "Settings go here", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableview.dataSource = self
        logoImages.append(UIImage(named: "math")!)
        logoImages.append(UIImage(named: "marvel")!)
        logoImages.append(UIImage(named: "science")!)
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.labels.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : TableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! TableViewCell
        

        cell.label1.text = self.labels[indexPath.row]
        cell.label2.text = self.descriptions[indexPath.row]
        cell.imageview.image = self.logoImages[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


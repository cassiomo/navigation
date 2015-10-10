//
//  MainViewController.swift
//  navigation
//
//  Created by Mo, Kevin on 10/9/15.
//  Copyright © 2015 Mo, Kevin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource
{
    
    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Brent Berg", "Cody Preston", "Kareem Dixon", "Xander Clark",
        "Francis Frederick", "Carson Hopkins", "Anthony Nguyen", "Dean Franklin",
        "Jeremy Davenport", "Rigel Bradford", "John Ball", "Zachery Norman",
        "Valentine Lindsey", "Slade Thornton", "Jelani Dickson", "Vance Hurley",
        "Wayne Ellison", "Kasimir Mueller", "Emery Pruitt", "Lucius Lawrence",
        "Kenneth Mendez"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCellWithIdentifier("NameCell", forIndexPath: indexPath)
        let cell = tableView.dequeueReusableCellWithIdentifier("NameCell")
        
        
        cell?.textLabel?.text = names[indexPath.row]
        return cell!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

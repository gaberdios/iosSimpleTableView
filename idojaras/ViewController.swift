//
//  ViewController.swift
//  idojaras
//
//  Created by G on 11/09/16.
//  Copyright © 2016 gaberdios. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var array = [ToDo]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - TableView DataSource Methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")!
        
        // Configure cell
        
        let todo = array[indexPath.row]
        cell.textLabel?.text = todo.name
        
        return cell
    }
    
    // MARK: - TableView Delegate Methods
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
            
            array.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Left)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        array.append(ToDo(name: "Eat Breakfast"))
        array.append(ToDo(name: "Brush Teeth"))
        array.append(ToDo(name: "Shoe Lace"))

// Uncomment next line if you want to Back button named Vissza
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"Vissza", style:.Plain, target:nil, action:nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


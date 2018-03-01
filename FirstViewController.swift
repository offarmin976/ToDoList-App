//
//  FirstViewController.swift
//  To-Do-List
//
//  Created by Armin Bajrica on 24.02.18.
//  Copyright © 2018 Armin Bajrica. All rights reserved.
//

import UIKit

var ToDoList = ["Visit Friends", "Go for a Walk", "Buy more Pizza"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var TableView: UITableView!
    
    

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (ToDoList.count)
        
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = ToDoList[indexPath.row]
        
        return(cell)
        
        
    }
    
    internal func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexpath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            ToDoList.remove(at: indexpath.row)
            tableView.reloadData()
            
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        TableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  SecondViewController.swift
//  To-Do-List
//
//  Created by Armin Bajrica on 24.02.18.
//  Copyright © 2018 Armin Bajrica. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBAction func Add(_ sender: Any) {
        
    if (input.text != "")
    {
        ToDoList.append(input.text!)
        input.text = ""
    }
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

        func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

}

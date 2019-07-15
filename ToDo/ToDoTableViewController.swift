//
//  ToDoTableViewController.swift
//  ToDo
//
//  Created by Abbey Malbon on 7/15/19.
//  Copyright © 2019 Abbey Malbon. All rights reserved.
//

import UIKit

class toDoTableViewController: UITableViewController {

    
    func createToDos() -> [toDo] {
        
        let swift = toDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = toDo()
        dog.name = "Walk the Dog"
        // important is set to false by default
        
        return [swift, dog]
    }
    var toDos : [toDo] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    

         self.clearsSelectionOnViewWillAppear = false

       
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
        return toDos.count
            
}
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
        }
        else {
            cell.textLabel?.text = toDo.name
        }
        
        return cell
    }


    }



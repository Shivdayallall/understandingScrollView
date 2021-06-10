//
//  ViewController.swift
//  usingScrollView
//
//  Created by shiv on 6/10/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var itemArray = ["apple", "grapes", "fruits", "pineapple", "car", "balloon", "circle", "pink", "red", "yellow", "bicycle", "bus", "airplane", "jey", "jet", "words"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table_view.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var table_view: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table_view.delegate = self
        table_view.dataSource = self
    }


}


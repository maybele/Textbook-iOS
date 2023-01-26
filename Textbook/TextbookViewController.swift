//
//  TextbookViewController.swift
//  Textbook
//
//  Created by FDCBele on 1/25/23.
//

import UIKit

class TextbookViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookTableViewCell",
                                                     for: indexPath)
            cell.textLabel?.text = self.tableViewData[indexPath.row]
            return cell
    }
    
    let tableViewData = Array(repeating: "Item", count: 5)
    
    @IBOutlet weak var textbookTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textbookTableView.register(UITableViewCell.self,
                               forCellReuseIdentifier: "TextbookTableViewCell")

        // Do any additional setup after loading the view.
    }
    

}

//
//  TextbookListTableViewController.swift
//  Textbook-iOS
//
//  Created by FDCBele on 1/26/23.
//

import UIKit

class TextbookListTableViewController: UITableViewController {
    var datasource : [Textbook] = [
    Textbook(title: "First Textbook"),
    Textbook(title: "2nd Textbook"),
    Textbook(title: "3rd Textbook"),
    Textbook(title: "4th Textbook")
    ]
    
    @IBOutlet var textbookListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Textbook List"
        let nib = UINib(nibName: "TextbookListViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "TextbookListViewCell")
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let textbook = datasource[indexPath.row]
 //       let teacher = textbook.list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookListViewCell", for: indexPath) as! TextbookListViewCell
        cell.textbookTitleLabel.text = textbook.title
        return cell
        
    }
    
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("clicked")
        let textbook = datasource[indexPath.row]
       // let textbook = category.list[indexPath.row]

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TextbookDetailViewController") as! TextbookDetailViewController

        vc.textbook = textbook
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

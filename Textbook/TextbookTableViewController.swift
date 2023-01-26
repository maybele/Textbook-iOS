//
//  TextbookTableViewController.swift
//  Textbook
//
//  Created by FDCBele on 1/25/23.
//

import UIKit

class TextbookTableViewController: UIViewController,UITableViewDataSource,UINavigationControllerDelegate {
    
    @IBOutlet var textbookTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let textbookData = datasource[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookTableViewCell", for: indexPath) as! TextbookTableViewCell
        cell.texbookTitleLabel.text = textbookData.textBookName
        return cell
    }
    

    var datasource: [Textbook] = [
      Textbook(textBookName: "Langging"),
      Textbook(textBookName: "Bele"),
      Textbook(textBookName: "Mark"),
      Textbook(textBookName: "Maybele"),
      Textbook(textBookName: "Hello"),
      ]
      
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Teacher List"
        let nib = UINib(nibName: "TextbookTableViewCell", bundle: nil)
        self.textbookTable.register(nib, forCellReuseIdentifier: "TextbookTableViewCell")
    }

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//      return datasource[section].list.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//      let category = datasource[indexPath.section]
//      let teacher = category.list[indexPath.row]
//      let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookTableViewCell", for: indexPath) as! TextbookTableViewCell
//      cell.texbookTitleLabel.text = teacher.name
//      return cell
//    }
//      override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 60
//      }
//      override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return datasource[section].name
//      }
//      override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 60
//      }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("clicked")
        let category = datasource[indexPath.row]
        let textbook = category.list[indexPath.row]

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController

        vc.textbook = textbook
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

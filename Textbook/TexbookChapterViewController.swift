//
//  TexbookChapterViewController.swift
//  Textbook
//
//  Created by FDCBele on 1/26/23.
//

import UIKit

class TexbookChapterViewController: UIViewController,UITableViewDataSource, UINavigationControllerDelegate {
    
    var textbook: Textbook?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let textbookData = datasource[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookChapterTableViewCell", for: indexPath) as! TextbookChapterTableViewCell
        cell.textbookChapterLabel.text = textbookData.textBookName
        return cell
    }
    
    var datasource: [Textbook] = [
      Textbook(textBookName: "Langging", list: [
        Chapter(title: "First Lesson")]),
      Textbook(textBookName: "Bele", list: [
        Chapter(title: "2nd Lesson")]),
      Textbook(textBookName: "Mark", list: [
        Chapter(title: "Third Lesson")]),
      Textbook(textBookName: "Maybele", list: [
        Chapter(title: "Fourth Lesson")]),
      Textbook(textBookName: "Hello", list: [
        Chapter(title: "Fifth Lesson")]),
      ]
  
    @IBOutlet weak var textbookChapterTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Teacher List"
        let nib = UINib(nibName: "TextbookChapterTableViewCell", bundle: nil)
        self.textbookChapterTableView.register(nib, forCellReuseIdentifier: "TextbookChapterTableViewCell")

        // Do any additional setup after loading the view.
    }
//          override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//              let category = datasource[indexPath.row]
//              let textbook = category.list[indexPath.row]
//
//              let storyboard = UIStoryboard(name: "Main", bundle: nil)
//              let vc = storyboard.instantiateViewController(withIdentifier: "TeacherDetailViewController") as! TeacherDetailViewController
//
//              vc.textbook = textbook
//              self.navigationController?.pushViewController(vc, animated: true)
//          }
}

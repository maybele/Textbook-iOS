//
//  TestViewController.swift
//  Textbook
//
//  Created by FDCBele on 1/26/23.
//

import UIKit

class TestViewController: UIViewController, UINavigationControllerDelegate {

    var textbook: Chapter?
    
    @IBOutlet weak var testLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = textbook?.title {
            self.title = name
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

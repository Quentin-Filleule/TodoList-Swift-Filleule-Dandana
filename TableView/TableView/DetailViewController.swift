//
//  DetailViewController.swift
//  TableView
//
//  Created by Quentin Filleule on 06/12/2022.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        if let detailData = data {
            
            DetailDesc.text = detailData.desc
            DetailTitle.text = detailData.name
        
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

    @IBAction func DeleteBtn(_ sender: Any) {
        
        
    }
    @IBAction func EditBtn(_ sender: Any) {
    }
    
    @IBOutlet weak var DetailDesc: UITextView!
    @IBOutlet weak var DetailTitle: UITextField!
    
    var data: MyData?
    
}

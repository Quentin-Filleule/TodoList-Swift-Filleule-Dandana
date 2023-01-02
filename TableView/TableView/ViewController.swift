//
//  ViewController.swift
//  TableView
//
//  Created by Quentin Filleule on 07/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1",for: indexPath) as! TableViewCell
        
        
        cell.myLabel.text = myData[indexPath.row].name
        
        
        
        return cell
    }
    
    var myData : [MyData] = []
    
    @IBAction func Validation(_ sender: Any) {
        
    }
    
    
    @IBAction func AddList(_ sender: Any) {
        //let desc = "Description "
        //let name = "Todo " + String(myData.count)
        //let d = MyData(name: name,desc: desc)
        //myData.append(d)
        myTableView.reloadData()
    }
    
    @IBAction func SaveBtnEdit(_ unwindSegue: UIStoryboardSegue) {
        let vc = unwindSegue.source as! EditViewController
        // Use data from the view controller which initiated the unwind segue
        
        let name = vc.TodoTitle.text!
        let desc = vc.TodoDesc.text!
        let d = MyData(name: name,desc: desc)
        myData.append(d)
        myTableView.reloadData()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let vc = segue.destination as? DetailViewController {
            let myIndexPath = self.myTableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            
            vc.data = myData[row]
            
            
           
            
        }
    }
    
    
    @IBAction func DelBtnDetail(_ unwindSegue: UIStoryboardSegue) {
        
        let vc = unwindSegue.source as! DetailViewController
        let myIndexPath = self.myTableView.indexPathForSelectedRow!
        let row = myIndexPath.row
        
        myData.remove(at: row)
        myTableView.reloadData()
        
    }
    
    @IBAction func EditBtnDetail(_ unwindSegue: UIStoryboardSegue) {
        
        let vc = unwindSegue.source as! DetailViewController
        let desc1 = vc.DetailDesc.text!
        let name1 = vc.DetailTitle.text!

        let myIndexPath = self.myTableView.indexPathForSelectedRow!
        let row = myIndexPath.row
        
        myData[row].name = name1
        myData[row].desc = desc1
        
        myTableView.reloadData()
        
        
        
    }
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
            let desc = "Description "
            let name = "Todo " + String(myData.count)
        let d = MyData(name: name, desc: desc)
            myData.append(d)
            
        
        
        myTableView.dataSource = self
        
    


}
}


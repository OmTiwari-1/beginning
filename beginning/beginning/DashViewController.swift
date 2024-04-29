//
//  DashViewController.swift
//  beginning
//
//  Created by Students on 16/04/24.
//

import UIKit


   

class DashViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var dashtableview: UITableView!
    
    let rowsArray = [["name":"Ajit"],["name":"Gourav"],["name":"Archita"],["name":"Archita"],["name":"Anchal"],["name":"Ajit"],["name":"Gourav"],["name":"Archita"],["name":"Archita"],["name":"Anchal"],["name":"Ajit"],["name":"Gourav"],["name":"Archita"],["name":"Krishna"]]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dashTableViewCell", for: indexPath) as! DashTableViewCell
        
        cell.namelabel.text = self.rowsArray[indexPath.row]["name"]
        return cell
    }
    
    
    override func viewDidLoad(){
        func viewDidLoad() {
            super.viewDidLoad()
            
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
    
}

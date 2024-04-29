//
//  WelcomeViewController.swift
//  beginning
//
//  Created by Students on 15/04/24.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var createanaccount: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func login(_ sender: Any) {
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginViewController")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func createanaccount(_ sender: Any) {
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "createanaccountviewcontroller")
        self.navigationController?.pushViewController(controller, animated: true)
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

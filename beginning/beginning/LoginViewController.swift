//
//  LoginViewController.swift
//  beginning
//
//  Created by Students on 15/04/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var Enteremail: UITextField!
    
    @IBOutlet var Enterpassword: UITextField!
    
    @IBOutlet weak var login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func sumbmitButtonPressed(_ sender: Any) {
        if Enteremail.text == ""{
            let alert = UIAlertController(title: "Alert", message: "Please fill user name", preferredStyle: UIAlertController.Style.alert)
            
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            
            
        }else  if Enterpassword.text == ""{
        
        }else if !self.isValidEmail(Enteremail.text!){
            
        }else{
            let controller  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "registrationViewController")
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == ""{
            return true
        }
        if textField == Enteremail{
            if textField.text?.count ?? 0>30 {
                return false
            }
        }
        return true
    }
    
    
    @IBAction func emailValid(_ sender: Any) {
        
    }
    
    @IBAction func passwordValid(_ sender: Any) {
        
    }
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
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

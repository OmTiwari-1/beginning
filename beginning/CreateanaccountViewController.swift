//
//  CreateanaccountViewController.swift
//  beginning
//
//  Created by Students on 16/04/24.
//

import UIKit

class CreateanaccountViewController: UIViewController {
    @IBOutlet weak var firstnametf: UITextField!
    
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var Enteremailtf: UITextField!
    @IBOutlet weak var Enterpasswordtf: UITextField!
  
   
    @IBOutlet weak var confirmpasswordtf: UITextField!
    @IBAction func createanaccount(_ sender: Any) {
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if string == ""{
                return true
            }
            if textField == firstnametf || textField == lastname{
                if textField.text?.count ?? 0 > 20{
                    return false
                }
            }
            return true
        }

        
        @IBAction func signUpButtonPressed(_ sender: Any) {
            if firstnametf.text == ""{
                let alert = UIAlertController(title: "Alert❗", message: "Please Fill Username", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "😮k", style: UIAlertAction.Style.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
                
                
            }
            else if Enterpasswordtf.text == ""{
                let alert = UIAlertController(title: "Alert❗", message: "Please Fill password", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "😮k", style: UIAlertAction.Style.default, handler: nil))
                

                self.present(alert, animated: true, completion: nil)
                
            }
            
            else if lastname.text == ""{
                let alert = UIAlertController(title: "Alert❗", message: "Please Fill password", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "😮k", style: UIAlertAction.Style.default, handler: nil))
                

                self.present(alert, animated: true, completion: nil)
                
            }
            
            
            else if confirmpasswordtf.text == ""{
                let alert = UIAlertController(title: "Alert❗", message: "Please Fill password", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "😮k", style: UIAlertAction.Style.default, handler: nil))
                

                self.present(alert, animated: true, completion: nil)
                
            }
            else if Enterpasswordtf.text != confirmpasswordtf.text{
                let alert = UIAlertController(title: "Alert❗", message: "Please Fill password", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "😮k", style: UIAlertAction.Style.default, handler: nil))
                

                self.present(alert, animated: true, completion: nil)
                
            }
      
           
            else if !self.isNameValid(testStr: firstnametf.text!){
                let alert = UIAlertController(title: "Alert❗", message: "Please enter valid email", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "😮k", style: UIAlertAction.Style.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
            }
         
            else{
                let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginviewController")
                self.navigationController?.pushViewController(controller, animated: true)
            }
        }
        
        
        func isNameValid(testStr:String) -> Bool {
            let emailRegEx = "^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{1,4}$"
            let emailTest = NSPredicate(format:"SELF MATCHES[c] %@", emailRegEx)
            return emailTest.evaluate(with: testStr)
        }
        
     
        func isValidPassword(_ password: String) -> Bool {
            let passwordRegx = "^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[#?!@$%^&<>*~:`-]).{8,}$"
            let passwordCheck = NSPredicate(format: "SELF MATCHES %@",passwordRegx)
            return passwordCheck.evaluate(with: password)

        }
    override func viewDidLoad() {
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

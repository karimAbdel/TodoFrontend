//
//  LoginViewController.swift
//  TodoApp
//
//  Created by User on 2017-06-16.
//  Copyright © 2017 Fatih Nayebi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    
    @IBOutlet weak var txtUsernameF: UITextField!
    
    
    @IBOutlet weak var txtPasswordF: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        
        // LoginManager
        LoginManager.logIn(userName: txtUsernameF.text!, password: txtPasswordF.text!) {
            (responseData, error) in
            if let response = responseData {
                if response.success == true {
                    print(response)
                    let todosViewController = self.storyboard?.instantiateViewController(withIdentifier: "TodosTableViewController")
                    self.navigationController?.pushViewController(todosViewController!, animated: true)
                } else {
                    print("User name and password were not correct")
                    let alert = UIAlertController(title: "Error", message: "User name and password were not correct", preferredStyle: .alert)
                    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alert.addAction(action)
                    self.present(alert, animated: true, completion: nil)
                }
            } else if  error == true {
                print("Backend error")
                let alert = UIAlertController(title: "Error", message: "Something went wrong with the backend", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(action)
                self.present(alert, animated: true, completion: nil)
            }
        }
        
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        if segue.identifier == "signUp" {
            let vc = segue.destination as! SignUpViewController
            
        }

        
        
        
    }
    
    
    
    
    
    
    
    
    
   /* override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "segLogInToHomePage" {
            if txtUsernameF.text == "user" &&
                txtPasswordF.text == "pass" {
                return true
            } else {
                return false
            }
        }
        return false
    }*/
    
}
    
    
    
    
    



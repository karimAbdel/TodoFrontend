//
//  SignUpViewController.swift
//  TodoApp
//
//  Created by User on 2017-06-22.
//  Copyright © 2017 Fatih Nayebi. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController,UITextFieldDelegate {
    
    
    
    @IBOutlet weak var usernameL: UILabel!
    
    
    
    @IBOutlet weak var usernameTF: UITextField!
    
    
    
    @IBOutlet weak var passwordL: UILabel!
    
    
    
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    
    
    
    @IBAction func signUpTouched(_ sender: UIButton) {
        
        LoginManager.register(username: usernameTF.text!, password: passwordTF.text!) {
            (responseData, error) in
            if let response = responseData {
                if response.success == true {
                    print(response)
                   // let register = self.storyboard?.instantiateViewController(withIdentifier: "register")
                    
                
                    
                }             } else if  error == true {
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

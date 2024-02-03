//
//  ViewController.swift
//  AlertProject
//
//  Created by Muhammed Turabi Sancak on 2.02.2024.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var usernameText: UITextField!
  
  @IBOutlet weak var passwordText: UITextField!
  
  @IBOutlet weak var password2Text: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  @IBAction func signupClicked(_ sender: Any) {
    
    /* let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
     let okButton = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default) { UIAlertAction in
     //button clicked
     print("button clicked")
     }
     alert.addAction(okButton)
     self.present(alert, animated: true, completion: nil) */
    
    if usernameText.text == ""{
    makeAlert(titleInput: "Error", messageInput: "Username not found")
    }else if passwordText.text == ""{
    makeAlert(titleInput: "Error", messageInput: "Password 1 not found")
    }else if password2Text.text == ""{
      makeAlert(titleInput: "Error", messageInput: "Password 2 not found")
    }else if passwordText.text != password2Text.text{
      makeAlert(titleInput: "Error", messageInput: "Passwords do not match")
    }else {
      makeAlert(titleInput: "Success", messageInput: "Entry Success")
    }
    
    func makeAlert(titleInput: String, messageInput: String){
      let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
      let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
        print("")}
      alert.addAction(okButton)
      self.present(alert, animated: true, completion: nil)
    }
  }
  
}

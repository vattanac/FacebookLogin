//
//  ViewController.swift
//  FacebookLogin
//
//  Created by Vattanac on 12/7/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit
import FBSDKLoginKit
class ViewController: UIViewController ,FBSDKLoginButtonDelegate{
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let loginButton = FBSDKLoginButton()
        loginButton.center = view.center
        loginButton.delegate = self
        view.addSubview(loginButton)
        
       
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"id,email,first_name,last_name"])?.start(completionHandler: { (con, res, err) in
            print(res!)
            
            
        })
    }


}


//
//  LoginVC.swift
//  SwiftGen-Example
//
//  Created by Mustafa GUNES on 26.09.2019.
//  Copyright © 2019 Mustafa GUNES. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        perform(segue: StoryboardSegue.Auth.backMainStoryboard)
    }
    
    @IBAction func showRegisterTapped(_ sender: Any) {
        perform(segue: StoryboardSegue.Auth.showregister)
    }
}

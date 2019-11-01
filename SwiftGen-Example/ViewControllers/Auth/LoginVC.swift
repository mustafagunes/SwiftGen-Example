//
//  LoginVC.swift
//  SwiftGen-Example
//
//  Created by Mustafa GUNES on 26.09.2019.
//  Copyright © 2019 Mustafa GUNES. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var segueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
            animations.addSlowWobblingAnimation(self.segueButton)
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4)) {
            animations.addWobblingAnimation(self.segueButton)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
            animations.pulse(self.segueButton)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(15)) {
            animations.smoothJiggle(self.segueButton)
        }
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        perform(segue: StoryboardSegue.Auth.backMainStoryboard)
    }
    
    @IBAction func showRegisterTapped(_ sender: Any) {
        perform(segue: StoryboardSegue.Auth.showregister)
    }
}

//
//  ViewController.swift
//  SwiftGen-Example
//
//  Created by Mustafa GUNES on 26.09.2019.
//  Copyright © 2019 Mustafa GUNES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var segueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Localization string
        titleLabel.text = L10n.HomeVC.Welcome.title
        
        // Color
        titleLabel.textColor = ColorName.firstColor.color
        
        // Image
        imageView.image = Asset.Image.image.image
  
        // Font
        titleLabel.font = FontFamily.OpenSans.boldItalic.font(size: 12)
        segueButton.titleLabel?.font = FontFamily.OpenSans.extrabold.font(size: 20)
    }
    
    @IBAction func showAuthTapped(_ sender: Any) {
        // Segue
        perform(segue: StoryboardSegue.Main.showAuthStoryboard)
    }
}


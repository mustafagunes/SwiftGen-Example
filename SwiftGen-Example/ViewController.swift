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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = L10n.HomeVC.Welcome.title
        //titleLabel.textColor = Asset.Colors.khakiGreen.color
        titleLabel.textColor = ColorName.firstColor.color
        imageView.image = Asset.Image.image.image
    }
}


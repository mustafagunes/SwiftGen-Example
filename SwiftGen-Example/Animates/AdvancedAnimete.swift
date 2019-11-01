//
//  AdvancedAnimete.swift
//  SwiftGen-Example
//
//  Created by Mustafa GUNES on 1.11.2019.
//  Copyright © 2019 Mustafa GUNES. All rights reserved.
//

import UIKit
import GLKit
import QuartzCore

var animations = AdvancedAnimations()

class AdvancedAnimations {
    
    func addWobblingAnimation(_ button: UIButton) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 1
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: button.center.x - 2, y: button.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: button.center.x + 2, y: button.center.y))
        button.layer.add(animation, forKey: "position")
    }
    
    func addSlowWobblingAnimation(_ button: UIButton) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.10
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: button.center.x - 3, y: button.center.y - 3))
        animation.toValue = NSValue(cgPoint: CGPoint(x: button.center.x + 3, y: button.center.y + 3))
        button.layer.add(animation, forKey: "position")
    }
    
    //It 'wiebelt een beetje' to draw atention. Degrees bepaald hoever.
    func smoothJiggle(_ button: UIButton) {
        
        let degrees: Float = 2.0
        let animation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        animation.duration = 0.6
        animation.isCumulative = true
        animation.repeatCount = Float.infinity
        animation.values = [0.0,
                            GLKMathDegreesToRadians(-degrees) * 0.5,
                            0.0,
                            GLKMathDegreesToRadians(degrees) * 0.4,
                            0.0,
                            GLKMathDegreesToRadians(-degrees) * 0.3,
                            0.0,
                            GLKMathDegreesToRadians(degrees) * 0.2,
                            0.0,
                            GLKMathDegreesToRadians(-degrees) * 0.1,
                            0.0,
                            GLKMathDegreesToRadians(degrees),
                            0.0]
        animation.fillMode = .forwards
        animation.timingFunction = CAMediaTimingFunction(name: .linear)
        animation.isRemovedOnCompletion = true
        
        button.layer.add(animation, forKey: "wobble")
    }
    
    func pulse(_ button: UIButton) {
        let pulseAnimation = CABasicAnimation(keyPath: "opacity")
        pulseAnimation.duration = 5
        pulseAnimation.fromValue = 0
        pulseAnimation.toValue = 1
        pulseAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        pulseAnimation.autoreverses = true
        pulseAnimation.repeatCount = .greatestFiniteMagnitude
        button.layer.add(pulseAnimation, forKey: nil)
    }
}


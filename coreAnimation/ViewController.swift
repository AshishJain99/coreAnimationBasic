//
//  ViewController.swift
//  coreAnimation
//
//  Created by Ashish Jain on 09/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    let layer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        layer.backgroundColor = UIColor.systemRed.cgColor
        layer.frame = CGRect(x: 100, y: 100, width: 120, height: 120)
        view.layer.addSublayer(layer)
        
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2.0){
            self.animateMovement()
            self.animateoOpacity()
        }
    }


    func animateMovement(){
        let animation = CABasicAnimation(keyPath: "position")
        
        animation.fromValue = CGPoint(x: layer.frame.origin.x+(layer.frame.width/2), y: layer.frame.origin.y+(layer.frame.height/2))
        animation.toValue = CGPoint(x: 300, y: 400)
        animation.duration = 1
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.beginTime = CACurrentMediaTime()
        
        layer.add(animation, forKey: "position")
        
        
    }
    
    func animateoOpacity(){
        let animation = CABasicAnimation(keyPath: "opacity")
        
        animation.fromValue = 1
        animation.toValue = 0
        animation.duration = 3
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.beginTime = CACurrentMediaTime()
        
        layer.add(animation, forKey: "opacity")
        
        
    }
    
}


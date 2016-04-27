//
//  scheduleView.swift
//  CleanUp Angels
//
//  Created by Eric Tai on 2016-04-25.
//  Copyright © 2016 Eric Tai. All rights reserved.
//

import UIKit

class scheduleView: UIView {

    var backgroundImage:UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    var count:Double = 0
    
    func setup(backgroundImageName:String) {
        backgroundImage.frame.size = self.frame.size
        backgroundImage.frame.size.width = self.frame.size.width / 4
        backgroundImage.frame.size.height = self.frame.size.height / 2
        backgroundImage.contentMode = .ScaleAspectFill
        backgroundImage.image = UIImage(named: backgroundImageName)
        backgroundImage.frame.origin = CGPoint(x: -80, y: -100)
        backgroundImage.alpha = 0
        
        UIView.animateWithDuration(1.3, delay: self.count * 0.4, options: .CurveEaseInOut, animations: {
            self.backgroundImage.frame.origin = CGPoint(x: 0, y: 40)
            self.backgroundImage.alpha = 1
            }, completion: nil)
        self.addSubview(backgroundImage)
        self.clipsToBounds = true
        
    }
    func moveBackground(distance:CGFloat) {
        backgroundImage.frame.origin.y = -distance
    }
}


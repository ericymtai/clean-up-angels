//
//  VoteViewController.swift
//  CleanUp Angels
//
//  Created by Eric Tai on 2016-04-26.
//  Copyright © 2016 Eric Tai. All rights reserved.
//

import UIKit

class VoteViewController: UIViewController {

    @IBOutlet weak var votePicGroup1: UIImageView!
    @IBOutlet weak var votePicGroup2: UIImageView!
    @IBOutlet weak var votePicGroup3: UIImageView!
    @IBOutlet weak var votePicGroup4: UIImageView!
    @IBOutlet weak var votePicGroup5: UIImageView!
    @IBOutlet weak var votePicGroup6: UIImageView!
    
    @IBOutlet weak var VoteLabelGroup1: UILabel!
    @IBOutlet weak var VoteLabelGroup2: UILabel!
    @IBOutlet weak var VoteLabelGroup3: UILabel!
    @IBOutlet weak var voteLabelGroup4: UILabel!
    @IBOutlet weak var voteLabelGroup5: UILabel!
    @IBOutlet weak var voteLabelGroup6: UILabel!
    
    @IBOutlet weak var VoteSwitchGroup1: UISwitch!
    @IBOutlet weak var VoteSwitchGroup2: UISwitch!
    @IBOutlet weak var VoteSwitchGroup3: UISwitch!
    @IBOutlet weak var VoteSwitchGroup4: UISwitch!
    @IBOutlet weak var VoteSwitchGroup5: UISwitch!
    @IBOutlet weak var VoteSwitchGroup6: UISwitch!

    
    @IBOutlet weak var changeButton: UIImageView!
    
    var imgsArray:[UIImageView] = []
    
    var imgsArray2:[UIImageView] = []

    var labelArray:[UILabel] = []
    
    var labelArray2:[UILabel] = []
    
    var switchArray:[UISwitch] = []
    
    var switchArray2:[UISwitch] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgsArray = [votePicGroup1, votePicGroup2, votePicGroup3]
        
        imgsArray2 = [votePicGroup4, votePicGroup5, votePicGroup6]
        
        labelArray = [VoteLabelGroup1, VoteLabelGroup2, VoteLabelGroup3]
        
        labelArray2 = [voteLabelGroup4, voteLabelGroup5, voteLabelGroup6]
        
        switchArray = [VoteSwitchGroup1, VoteSwitchGroup2, VoteSwitchGroup3]
        
        switchArray2 = [VoteSwitchGroup4, VoteSwitchGroup5, VoteSwitchGroup6]
        
        for img in imgsArray {
            img.layer.opacity = 0.0
            let frame1 = img.frame
        
            UIView.animateWithDuration(1.5, animations: {
  
                img.frame = CGRect(x: frame1.origin.x - 170, y: frame1.origin.y, width: frame1.size.width, height: frame1.size.height)
        })
        for img in imgsArray2 {
            img.layer.opacity = 1.0
            let frame4 = img.frame
 
            UIView.animateWithDuration(1.5, animations: {
                    
                img.frame = CGRect(x: frame4.origin.x + 10, y: frame4.origin.y, width: frame4.size.width, height: frame4.size.height)
            })
        }

        for label in labelArray {
            label.layer.opacity = 0.0
            let frame2 = label.frame
                    
            UIView.animateWithDuration(1.5, animations: {
                      
                label.frame = CGRect(x: frame2.origin.x - 170, y: frame2.origin.y, width: frame2.size.width, height: frame2.size.height)
            })
        }
        for label in labelArray2 {
            label.layer.opacity = 1.0
            let frame5 = label.frame
                
            UIView.animateWithDuration(1.5, animations: {
                    
                label.frame = CGRect(x: frame5.origin.x + 3, y: frame5.origin.y, width: frame5.size.width, height: frame5.size.height)
            })
        }
        for switc in switchArray {
            switc.layer.opacity = 0.0
            let frame3 = switc.frame
                    
            UIView.animateWithDuration(1.5, animations: {
                 
                switc.frame = CGRect(x: frame3.origin.x - 170, y: frame3.origin.y, width: frame3.size.width, height: frame3.size.height)
            })
        }
        for switc in switchArray2 {
            switc.layer.opacity = 1.0
            let frame6 = switc.frame
                
            UIView.animateWithDuration(1.5, animations: {
                    
                switc.frame = CGRect(x: frame6.origin.x + 3, y: frame6.origin.y, width: frame6.size.width, height: frame6.size.height)
            })
        }
    }
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(VoteViewController.tapHandler))
        
        // call each outlet name in array and add actions
        for img in imgsArray {
            img.addGestureRecognizer(tapGesture)
            img.userInteractionEnabled = true
        }
        for img in imgsArray2 {
            img.addGestureRecognizer(tapGesture)
            img.userInteractionEnabled = true
        }
        for label in labelArray {
            label.addGestureRecognizer(tapGesture)
            label.userInteractionEnabled = true

        }
        for switc in switchArray {
            switc.addGestureRecognizer(tapGesture)
            switc.userInteractionEnabled = true

        }
        
        changeButton.addGestureRecognizer(tapGesture)
        changeButton.userInteractionEnabled = true
    }
    
    

    
    func tapHandler() {

        // set first action to each outlet to turn 360 degree
        UIView.animateWithDuration(1.5, animations:{
            for img in self.imgsArray {
                img.transform = CGAffineTransformMakeTranslation(200, 0)
                img.layer.opacity = 1.0
            }
            for img in self.imgsArray2 {
                img.transform = CGAffineTransformMakeTranslation(200, 0)
                img.layer.opacity = 0.0
            }
            for label in self.labelArray {
                label.transform = CGAffineTransformMakeTranslation(520, 0)
                label.layer.opacity = 1.0
            }
            for label in self.labelArray2 {
                label.transform = CGAffineTransformMakeTranslation(520, 0)
                label.layer.opacity = 0.0
            }
            for switc in self.switchArray {
                switc.transform = CGAffineTransformMakeTranslation(520, 0)
                switc.layer.opacity = 1.0
            }
            for switc in self.switchArray2 {
                switc.transform = CGAffineTransformMakeTranslation(520, 0)
                switc.layer.opacity = 0.0
            }
        })
    }

}

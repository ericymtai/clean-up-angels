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
    
    @IBOutlet weak var VoteLabelGroup1: UILabel!
    @IBOutlet weak var VoteLabelGroup2: UILabel!
    @IBOutlet weak var VoteLabelGroup3: UILabel!
    
    @IBOutlet weak var VoteSwitchGroup1: UISwitch!
    @IBOutlet weak var VoteSwitchGroup2: UISwitch!
    @IBOutlet weak var VoteSwitchGroup3: UISwitch!
    
    @IBOutlet weak var changeButton: UIImageView!
    
    var imgsArray:[UIImageView] = []

    var labelArray:[UILabel] = []
    
    var switchArray:[UISwitch] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgsArray = [votePicGroup1, votePicGroup2, votePicGroup3]
        
        labelArray = [VoteLabelGroup1, VoteLabelGroup2, VoteLabelGroup3]
        
        switchArray = [VoteSwitchGroup1, VoteSwitchGroup2, VoteSwitchGroup3]
//        
//        votePicGroup1.layer.opacity = 0.0
//        VoteLabelGroup1.layer.opacity = 0.0
//        VoteSwitchGroup1.layer.opacity = 0.0
        
        for img in imgsArray {
            img.layer.opacity = 0.0
            let frame1 = img.frame
        
        


//       let frame = imgsArray.frame
        
//        let frame1 = votePicGroup1.frame
//        let frame2 = VoteLabelGroup1.frame
//        let frame3 = VoteSwitchGroup1.frame
        
        UIView.animateWithDuration(1.5, animations: {
  
            //for img in self.imgsArray {
                img.frame = CGRect(x: frame1.origin.x - 170, y: frame1.origin.y, width: frame1.size.width, height: frame1.size.height)
            //}
        
//            self.votePicGroup1.frame = CGRect(x: frame1.origin.x - 345, y: frame1.origin.y, width: frame1.size.width, height: frame1.size.height)
            
//            self.VoteLabelGroup1.frame = CGRect(x: frame2.origin.x - 345, y: frame2.origin.y, width: frame2.size.width, height: frame2.size.height)
            
//            self.VoteSwitchGroup1.frame = CGRect(x: frame3.origin.x - 345, y: frame3.origin.y, width: frame3.size.width, height: frame3.size.height)
            
            
        })
//    }
        
                for label in labelArray {
                    label.layer.opacity = 0.0
                    let frame2 = label.frame
                    
                UIView.animateWithDuration(1.5, animations: {
                      
                    label.frame = CGRect(x: frame2.origin.x - 170, y: frame2.origin.y, width: frame2.size.width, height: frame2.size.height)
                })
            }
                for switc in switchArray {
                    switc.layer.opacity = 0.0
                    let frame3 = switc.frame
                    
                UIView.animateWithDuration(1.5, animations: {
                 
                    switc.frame = CGRect(x: frame3.origin.x - 170, y: frame3.origin.y, width: frame3.size.width, height: frame3.size.height)
                })
            }
        }
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(VoteViewController.tapHandler))
        
        // call each outlet name in array and add actions
        for img in imgsArray {
            img.addGestureRecognizer(tapGesture)
            img.userInteractionEnabled = true
        }
        for label in labelArray {
            label.addGestureRecognizer(tapGesture)
            label.userInteractionEnabled = true
//            label.layer.opacity = 0.0
        }
        for switc in switchArray {
            switc.addGestureRecognizer(tapGesture)
            switc.userInteractionEnabled = true
//            switc.layer.opacity = 0.0
        }
        
        changeButton.addGestureRecognizer(tapGesture)
        changeButton.userInteractionEnabled = true
    }
    
    
//    func tapHandler() {
    
        // set first action to each outlet to turn
//        UIView.animateWithDuration(1.5, animations:{
//
//                self.votePicGroup1.transform = CGAffineTransformMakeTranslation(365, 0)
//                self.votePicGroup1.layer.opacity = 1.0
//
//                self.VoteLabelGroup1.transform = CGAffineTransformMakeTranslation(365, 0)
//                self.VoteLabelGroup1.layer.opacity = 1.0
//
//                self.VoteSwitchGroup1.transform = CGAffineTransformMakeTranslation(365, 0)
//                self.VoteSwitchGroup1.layer.opacity = 1.0
//
//        })
    
    func tapHandler() {

        // set first action to each outlet to turn 360 degree
        UIView.animateWithDuration(1.5, animations:{
            for img in self.imgsArray {
                img.transform = CGAffineTransformMakeTranslation(200, 0)
                img.layer.opacity = 1.0
            }
            for label in self.labelArray {
                label.transform = CGAffineTransformMakeTranslation(520, 0)
                label.layer.opacity = 1.0
            }
            for switc in self.switchArray {
                switc.transform = CGAffineTransformMakeTranslation(520, 0)
                switc.layer.opacity = 1.0
            }
        })
    }

}

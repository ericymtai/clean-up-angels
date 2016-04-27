//
//  ScheduleViewController.swift
//  CleanUp Angels
//
//  Created by Eric Tai on 2016-04-25.
//  Copyright © 2016 Eric Tai. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollSchedule: UIScrollView!
    
    let scheduleImages = ["may.jpg", "june.jpg", "july.jpg"]
    var schedules:[scheduleView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var count:Double = 0
        
        for scheduleImage in scheduleImages {
            
            let newSchedue = scheduleView(frame:CGRect(x: 70, y: CGFloat(115*count) + 160, width: 1080, height: 160))
            
            
            newSchedue.count = count
            
            newSchedue.setup(scheduleImage)
            
            scrollSchedule.addSubview(newSchedue)
            
            schedules.append(newSchedue)
            
            count += 1
        }
        
        scrollSchedule.contentSize = CGSize(width: 0 , height: 0 * scheduleImages.count )
        scrollSchedule.delegate = self
    }
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {

        for schedule in schedules {
            schedule.moveBackground(scrollView.contentOffset.y)
        }
    }
}






//
//  TakePictureViewController.swift
//  CleanUp Angels
//
//  Created by Eric Tai on 2016-04-21.
//  Copyright © 2016 Eric Tai. All rights reserved.
//

import UIKit

class TakePictureViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {

    @IBOutlet var TakePictureView: UIImageView!
    
    @IBOutlet var submit_btn: UIButton!
    
    var imageNames = ["dumpdrum.jpg"]

    
    var imagePicker: UIImagePickerController!
    
    @IBAction func takePicture(sender: UIButton) {
        imagePicker =  UIImagePickerController()

        // set if the device that can not operate the camera then displays a dump picture
        
        if (UIImagePickerController.isSourceTypeAvailable(.Camera)) {
            imagePicker.delegate = self
            imagePicker.sourceType = .Camera
            
            presentViewController(imagePicker, animated: true, completion: nil)
        } else {
            TakePictureView.image = UIImage(named: imageNames[0])
            submit_btn.alpha = 1

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        submit_btn.alpha = 0
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        TakePictureView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

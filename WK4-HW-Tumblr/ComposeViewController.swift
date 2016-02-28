//
//  ComposeViewController.swift
//  WK4-HW-Tumblr
//
//  Created by Anjani Bhargava on 2/26/16.
//  Copyright © 2016 Anjani Bhargava. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    
    @IBOutlet weak var textIcon: UIButton!
    @IBOutlet weak var photoIcon: UIButton!
    @IBOutlet weak var quoteIcon: UIButton!
    @IBOutlet weak var linkIcon: UIButton!
    @IBOutlet weak var chatIcon: UIButton!
    @IBOutlet weak var videoIcon: UIButton!
    
    var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        buttons = [textIcon, photoIcon, quoteIcon, linkIcon, chatIcon, videoIcon]
        
        for button in buttons {
            button.center.y = 620
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.buttons[0].center.y = 176
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.4, delay: 0.05, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.buttons[1].center.y = 176
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.buttons[2].center.y = 176
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.4, delay: 0.08, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.buttons[3].center.y = 318
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.4, delay: 0.05, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.buttons[4].center.y = 318
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.buttons[5].center.y = 318
            }) { (Bool) -> Void in
        }
    }

    
    @IBAction func didTapNevermind(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

/*
  // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        let destinationViewController = segue.destinationViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.0
    }
*/

}

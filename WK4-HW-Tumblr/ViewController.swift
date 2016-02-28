//
//  ViewController.swift
//  WK4-HW-Tumblr
//
//  Created by Anjani Bhargava on 2/26/16.
//  Copyright © 2016 Anjani Bhargava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    var fadeTransition: FadeTransition!
    
    
    @IBOutlet weak var searchBubble: UIImageView!
    var bubbleOriginalCenter: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        
        

    }

    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].selected = false
        let previousVC = viewControllers[previousIndex]
        
        // remove previous view controller
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        //current button
        sender.selected = true
        
        let vc = viewControllers[selectedIndex]
        
        //calls view will appear
        addChildViewController(vc)
        
        //set view size
        vc.view.frame = contentView.bounds
        
        //add vc
        contentView.addSubview(vc.view)
        
        //calls view did appear
        vc.didMoveToParentViewController(self)

        if buttons[1].selected == true {
            searchBubble.alpha = 0
        } else {
            searchBubble.alpha = 1
            bubbleOriginalCenter = searchBubble.center.y
            UIView.animateWithDuration(0.8, delay: 0, options: [.Repeat, .Autoreverse], animations: { () -> Void in
                self.searchBubble.center.y = self.bubbleOriginalCenter - 5
                }, completion: nil)
        }

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
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


}


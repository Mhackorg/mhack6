//
//  ViewController.swift
//  mhacks6
//
//  Created by Uriah Israel on 9/12/15.
//  Copyright (c) 2015 Uriah. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var myTimer: NSTimer?
    var agentViews = [UIView]()
    
    
    var agentWidth:CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        
        UIView.animateKeyframesWithDuration(1, delay: 0.4, options: .BeginFromCurrentState, animations: {
            //self.myView1?.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
            for view in self.agentViews {
                self.moveFrame(view)
            }
        }, completion: { success in
            // start animation again.
        })

//        UIView.animateWithDuration(1, delay: 0.4, options: .BeginFromCurrentState, animations: {
//            //self.myView1!.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
//            for view in self.agentViews {
//                
//                self.moveFrame(view)
//                // modify frame of view
//            }
//        }, completion: { success in
//            //print(success)
//        })

        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}


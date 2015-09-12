//
//  agentSetup.swift
//  mhacks6
//
//  Created by Uriah Israel on 9/12/15.
//  Copyright (c) 2015 Uriah. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    
    func setup() {
        
        
        let xcorners: [CGFloat] = [0.0, floor(self.view.frame.maxX/agentWidth)*agentWidth - agentWidth, floor(self.view.frame.maxX/agentWidth)*agentWidth - agentWidth , 0.0 ]
        
        let ycorners: [CGFloat] = [0, 0, floor(self.view.frame.maxY/agentWidth)*agentWidth - agentWidth,(floor(self.view.frame.maxY/agentWidth)*agentWidth - agentWidth)]
        
        agentViews = (0..<4).map { idx in
            let agent = UIView(frame: CGRect(x: xcorners[idx], y: ycorners[idx], width: self.agentWidth, height: self.agentWidth))

            agent.backgroundColor = UIColor.redColor()

            return agent
        }
  
        for agent in agentViews {
            view.addSubview(agent)
        }
        
//        var counter = 0
//        for agent in agentList {
//            
//            let agent = UIView(frame: CGRect(x: xcorners[counter], y: ycorners[counter], width: agentWidth, height: agentWidth))
//            agent.backgroundColor = UIColor.redColor()
//            self.view.addSubview(agent)
//            counter += 1
//        }
        
        
        
//        myView1 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//        myView1!.backgroundColor = UIColor.redColor()
//        self.view.addSubview(myView1!)
//       
//        myView2 = UIView(frame: CGRect(x: 0, y: 100, width: 100, height: 100))
//        myView2!.backgroundColor = UIColor.blueColor()
//        self.view.addSubview(myView2!)
//        
//        myView3 = UIView(frame: CGRect(x: 100, y: 0, width: 100, height: 100))
//        myView3!.backgroundColor = UIColor.greenColor()
//        self.view.addSubview(myView3!)
//        
//        myView4 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
//        myView4!.backgroundColor = UIColor.yellowColor()
//        self.view.addSubview(myView4!)
        
    }
    //start your agents mother fuckers!!!
}
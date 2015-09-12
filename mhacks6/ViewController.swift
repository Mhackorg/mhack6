//
//  ViewController.swift
//  mhacks6
//
//  Created by Uriah Israel on 9/12/15.
//  Copyright (c) 2015 Uriah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myView: UIView?
    var myTimer: NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        myView!.backgroundColor = UIColor.redColor()
        self.view.addSubview(myView!)
        myView!.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        
        myTimer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: "moveFrame", userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func moveFrame() {
        var startX = myView!.frame.origin.x
        var startY = myView!.frame.origin.y
        var flag = 0
        while flag == 0 {
            var potentialNewPosition = newPosition(startX, initY: startY)
            if checkBoundary(potentialNewPosition.newX, positionY: potentialNewPosition.newY) {
                myView!.frame = CGRect(x: potentialNewPosition.newX, y: potentialNewPosition.newY, width: 100, height: 100)
                flag = 1
            }
        }
    }
    
    func checkBoundary(positionX: CGFloat,  positionY: CGFloat) -> Bool {
        var frameMaxX = self.view.frame.maxX
        var frameMinX = self.view.frame.minX
        var frameMaxY = self.view.frame.maxY
        var frameMinY = self.view.frame.minY

        
        return (frameMinX < positionX) && (positionX + myView!.frame.width < frameMaxX) && (frameMinY < positionY) && (positionY + myView!.frame.height < frameMaxY)
    }
    
    func newPosition(initX: CGFloat, initY: CGFloat) -> (newX:CGFloat, newY:CGFloat){
        var movement = Int(arc4random_uniform(4))
        var stepSize: CGFloat = 50.0
        print(movement)
        var newX = initX; var newY = initY
        switch movement {
        case 0:
            newX += stepSize
        case 1:
            newY += stepSize
        case 2:
            newX -= stepSize
        case 3:
            newY -= stepSize
        default:
            break
            
        }
        
        return (newX, newY)
    }
    
    
    
}


//
//  agentMovement.swift
//  mhacks6
//
//  Created by Uriah Israel on 9/12/15.
//  Copyright (c) 2015 Uriah. All rights reserved.
//

import Foundation
import UIKit


extension ViewController {
    func moveFrame(myView: UIView?) {
        var startX = myView!.frame.origin.x
        var startY = myView!.frame.origin.y
        var flag = 0
        while flag == 0 {
            var potentialNewPosition = newPosition(startX,initY: startY)
            if checkBoundary(potentialNewPosition.newX, positionY: potentialNewPosition.newY, boundaryView: myView) {
                myView!.frame = CGRect(x: potentialNewPosition.newX, y: potentialNewPosition.newY, width: 100, height: 100)
                flag = 1
            }
        }
    }
    
    func checkBoundary(positionX: CGFloat,  positionY: CGFloat, boundaryView: UIView?) -> Bool {
        var frameMaxX = self.view.frame.maxX
        var frameMinX = self.view.frame.minX
        var frameMaxY = self.view.frame.maxY
        var frameMinY = self.view.frame.minY
        
        
        return (frameMinX <= positionX) && (positionX + boundaryView!.frame.width < frameMaxX) && (frameMinY <= positionY) && (positionY + boundaryView!.frame.height <=  frameMaxY)
    }
    
    func newPosition(initX: CGFloat, initY: CGFloat) -> (newX:CGFloat, newY:CGFloat) {
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
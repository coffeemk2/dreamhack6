//
//  points.swift
//  DreamHackApp
//
//  Created by kota on 2016/09/08.
//  Copyright © 2016年 maekawakazuma. All rights reserved.
//

import Foundation
import UIKit

struct Point{
    var x:CGFloat
    var y:CGFloat
    
    
    static func calcPoints(length:Double,point:Point, numberOfApex :Double)->[Point]{
        var points = [Point]()
        for i in 1...Int(numberOfApex){
            let x :CGFloat = point.x + CGFloat( length * sin( (2 * M_PI/numberOfApex) * Double(i) ) )
            let y :CGFloat = point.y + CGFloat( length * cos( (2 * M_PI/numberOfApex) * Double(i) ) )
            let point = Point(x: x, y: y)
            points.append(point)
        }
        return points
    }
    
}

//
//  DrawlineUIView.swift
//  DreamHackApp
//
//  Created by kota on 2016/09/06.
//  Copyright © 2016年 maekawakazuma. All rights reserved.
//

import UIKit

class DrawlineUIView: UIButton {
    
    let apex = 5
    var circles:[UIButton] = [UIButton]()
    var pcLayer = [CAShapeLayer]()
    var cgLayer = [[CAShapeLayer]]()
    
    override func awakeFromNib() {
    }
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        
        //---------- 　ポイントの計算　-----------
        let grandChildApex:Double = Double(apex)
        let halfPoint = Point(x: self.frame.width/2, y: self.frame.height/2)
        let childPoints = Point.calcPoints(150 ,point: halfPoint, numberOfApex: Double(apex))
        var grandChildPoints = [[Point]]()
        for childPoint in childPoints{
            let grandChildPoint = Point.calcPoints(60, point: childPoint, numberOfApex: grandChildApex)
            grandChildPoints.append(grandChildPoint)
        }
        
        
        //---------- 　親Viewの生成　-----------
        let parentRadius :CGFloat = 72
        let parentCircle = UIButton(frame: CGRectMake(0, 0, parentRadius, parentRadius))
        parentCircle.backgroundColor = UIColor(red: 255/255, green: 242/255, blue: 193/255, alpha: 1)
        parentCircle.layer.position = CGPointMake(self.frame.width/2, self.frame.height/2)
        parentCircle.layer.cornerRadius = parentRadius/2
        parentCircle.layer.shadowOffset = CGSizeMake(0, +10); //
        parentCircle.layer.shadowRadius = 5;
        parentCircle.layer.shadowOpacity = 0.3;
        
        
        
        //---------- 　子Viewの生成　-----------
        for (index,point) in childPoints.enumerate(){
            let childRadius :CGFloat = 48
            let childCircle = UIButton(frame: CGRectMake(0, 0, childRadius, childRadius))
            childCircle.tag = index + 100
            childCircle.addTarget(self, action: #selector(DrawlineUIView.update), forControlEvents: UIControlEvents.TouchUpInside)
            childCircle.backgroundColor = UIColor(red: 243/255, green: 99/255, blue: 4/255, alpha: 1)
            childCircle.layer.position = CGPointMake(point.x , point.y )
            childCircle.layer.cornerRadius = childRadius/2
            childCircle.layer.shadowOffset = CGSizeMake(0, +10)
            childCircle.layer.shadowRadius = 5;
            childCircle.layer.shadowOpacity = 0.3;
            circles.append(childCircle)
            
            
            //---------- 　親−子間のlayerの生成　-----------
            let line = UIBezierPath();
            line.moveToPoint(CGPointMake(parentCircle.center.x, parentCircle.center.y));
            line.addLineToPoint(CGPointMake(childCircle.center.x,childCircle.center.y) );
            let myLayer = CAShapeLayer()
            myLayer.strokeColor = UIColor.blackColor().CGColor
            myLayer.lineWidth = 2.0
            myLayer.path = line.CGPath
            myLayer.shadowOffset = CGSizeMake(0, +10)
            myLayer.shadowRadius = 5;
            myLayer.shadowOpacity = 0.5;
            pcLayer.append(myLayer)
            self.layer.addSublayer(myLayer)
            
            let grandChildPoints = Point.calcPoints(60, point: point,numberOfApex: grandChildApex)
            
            var subCgLayer = [CAShapeLayer]()
            
            
            //---------- 　孫Viewの生成　----------
            for (grandIndex,grandChildPoint) in grandChildPoints.enumerate(){
                let grandChildRadius :CGFloat = 32
                let grandChildCircle = UIButton(frame: CGRectMake(0, 0, grandChildRadius, grandChildRadius))
                grandChildCircle.alpha = 0
                grandChildCircle.tag = (index + 100) * 10 + grandIndex
                grandChildCircle.backgroundColor = UIColor(red: (239/255), green: (165/255), blue: (75/255), alpha: 1)
                grandChildCircle.layer.position = CGPointMake(grandChildPoint.x , grandChildPoint.y )
                grandChildCircle.layer.cornerRadius = grandChildRadius/2
                grandChildCircle.layer.shadowOffset = CGSizeMake(0, +10)
                grandChildCircle.layer.shadowRadius = 5;
                grandChildCircle.layer.shadowOpacity = 0.3;

                circles.append(grandChildCircle)
                UIView.animateWithDuration(1, animations: {
                    grandChildCircle.alpha = 1
                })
                
                
                // ----------　子−孫間のlayerの生成　----------
//                let fromPath = UIBezierPath();
//                fromPath.moveToPoint(CGPointMake(childCircle.center.x,childCircle.center.y))
//                fromPath.addLineToPoint(CGPointMake(childCircle.center.x,childCircle.center.y))
                
                let toPath = UIBezierPath();
                toPath.moveToPoint(CGPointMake(childCircle.center.x,childCircle.center.y))
                toPath.addLineToPoint(CGPointMake(grandChildCircle.center.x , grandChildCircle.center.y))

                let myLayer = CAShapeLayer()
                myLayer.strokeColor = UIColor.blackColor().CGColor
                myLayer.lineWidth = 2.0
                myLayer.path = toPath.CGPath
                
                subCgLayer.append(myLayer)
                self.layer.addSublayer(myLayer)
                myLayer.shadowOffset = CGSizeMake(0, +10)
                myLayer.shadowRadius = 5;
                myLayer.shadowOpacity = 0.5;
                self.addSubview(grandChildCircle)

               // ----　layerのアニメーション　----------
//                let animation = CABasicAnimation(keyPath: "path")
//                animation.duration = 1.0
//                animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
//                
//                animation.fromValue = myLayer.path
//                animation.toValue = toPath
//                myLayer.addAnimation(animation, forKey: animation.keyPath)
                
                
                
            }
            cgLayer.append(subCgLayer)
            
            
            self.addSubview(childCircle)
            self.addSubview(parentCircle)
        }
        
        // Drawing code
    }
    
    
    //----------　アニメーション　----------
    func update(button: UIButton) {
        let grandChildApex:Double = 1.0
        let halfPoint = Point(x: self.frame.width/2, y: self.frame.height/2)
        let childPoints = Point.calcPoints(150 ,point: halfPoint, numberOfApex: Double(apex))
        var grandChildPoints = [[Point]]()
        for childPoint in childPoints{
            let grandChildPoint = Point.calcPoints(60, point: childPoint, numberOfApex: grandChildApex)
            grandChildPoints.append(grandChildPoint)
        }
        
        
        //----------　layerのアニメーション　----------
        let animation = CABasicAnimation(keyPath: "path")
        animation.duration = 1.0
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        pcLayer.forEach {
            $0.removeFromSuperlayer()
        }
        
        for (index,cglayers) in cgLayer.enumerate(){
            for (i,layer) in cglayers.enumerate(){
                if index != button.tag % 100{
                    layer.removeFromSuperlayer()
                }else{
                    animation.fromValue = layer.path
                    animation.toValue = pcLayer[i].path
                    layer.addAnimation(animation, forKey: animation.keyPath)
                }
            }
        }
        
        
        //----------　Viewのアニメーション　----------
        UIView.animateWithDuration(1, animations: {
            self.subviews.forEach({ (view) in
                if view.tag == button.tag || view.tag/10 == button.tag  {
                    view.transform = CGAffineTransformMakeScale(1.5, 1.5);
                    if view.tag == button.tag {
                        view.center = CGPoint(x: self.frame.width/2, y: self.frame.height/2)
                        view.backgroundColor = UIColor(red: 255/255, green: 242/255, blue: 193/255, alpha: 1)
                    } else {
                        view.backgroundColor = UIColor(red: 243/255, green: 99/255, blue: 4/255, alpha: 1)
                        let s = view.tag % 10
                        view.center = CGPoint(x: childPoints[s].x, y: childPoints[s].y)
                                            }
                    
                    return
                }
                view.alpha = 0
            })
            })
        { (_) in
            
            self.cgLayer.forEach { layers in
                layers.forEach {
                    $0.removeFromSuperlayer()
                }
            }
            self.subviews.forEach {
                $0.removeFromSuperview()
            }
            self.circles = []
            self.pcLayer = []
            self.cgLayer = []
            self.setNeedsDisplay()
        }
    }
}


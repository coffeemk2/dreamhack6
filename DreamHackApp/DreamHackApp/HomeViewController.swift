//
//  HomeViewController.swift
//  DreamHackApp
//
//  Created by kota on 2016/09/04.
//  Copyright © 2016年 maekawakazuma. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let z:Double = sqrt(3.0)
        
        
        
        
        
        let radius :CGFloat = 80
      
        let circle = UIView(frame: CGRectMake(0, 0, radius, radius))
        circle.backgroundColor = .blueColor()
        circle.layer.position = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        circle.transform = CGAffineTransformMakeRotation(0)
        circle.layer.cornerRadius = radius/2
        self.view.addSubview(circle)
        
        let stick1 = UIView(frame: CGRectMake(0, 0, 3, 80))
        stick1.backgroundColor = .blackColor()
        stick1.layer.position = CGPointMake(circle.frame.width/2, circle.frame.height/2+80)
        circle.addSubview(stick1)
        
        let stick2 = UIView(frame: CGRectMake(0, 0, 3, 80))
        stick2.backgroundColor = .redColor()
        stick2.layer.position = CGPointMake(circle.frame.width/2, circle.frame.height/2-80)
        circle.addSubview(stick2)
        
        let stick3 = UIView(frame: CGRectMake(0, 0, 3, 80))
        stick3.backgroundColor = .greenColor()
        stick3.layer.position = CGPointMake(circle.frame.width/2+CGFloat(106*tan(1/z)), circle.frame.height/2-40)
        stick3.transform = CGAffineTransformMakeRotation(CGFloat(M_PI/3))
        circle.addSubview(stick3)
        
        let stick4 = UIView(frame: CGRectMake(0, 0, 3, 80))
        stick4.backgroundColor = .yellowColor()
        stick4.layer.position = CGPointMake(circle.frame.width/2-CGFloat(106*tan(1/z)), circle.frame.height/2+40)
        stick4.transform = CGAffineTransformMakeRotation(CGFloat(M_PI/3))
        circle.addSubview(stick4)
        
        let stick5 = UIView(frame: CGRectMake(0, 0, 3, 80))
        stick5.backgroundColor = .purpleColor()
        stick5.layer.position = CGPointMake(circle.frame.width/2-CGFloat(106*tan(1/z)), circle.frame.height/2-40)
        stick5.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI/3))
        circle.addSubview(stick5)
        
        let stick6 = UIView(frame: CGRectMake(0, 0, 3, 80))
        stick6.backgroundColor = .orangeColor()
        stick6.layer.position = CGPointMake(circle.frame.width/2+CGFloat(106*tan(1/z)), circle.frame.height/2+40)
        stick6.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI/3))
        circle.addSubview(stick6)
        
        let stick = UIView(frame: CGRectMake(0, 0, 3, 80))
        stick.backgroundColor = .grayColor()
        stick.layer.position = CGPointMake(circle.frame.width/2, circle.frame.height/2)
        stick.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI/3))
        circle.addSubview(stick)
        
        let circle_1 = UIView(frame: CGRectMake(0, 0, 50, 50))
        circle_1.backgroundColor = .blackColor()
        circle_1.layer.position = CGPointMake(stick2.frame.width/2, stick2.frame.height-100)
        circle_1.layer.cornerRadius = 25
        stick2.addSubview(circle_1)
        
        let circle_2 = UIView(frame: CGRectMake(0, 0, 50, 50))
        circle_2.backgroundColor = .redColor()
        circle_2.layer.position = CGPointMake(stick1.frame.width/2, stick1.frame.height+25)
        circle_2.layer.cornerRadius = 25
        stick1.addSubview(circle_2)
        
        let circle_3 = UIView(frame: CGRectMake(0, 0, 50, 50))
        circle_3.backgroundColor = .yellowColor()
        circle_3.layer.position = CGPointMake(stick3.frame.width/2-34, stick3.frame.height/2-40)
        circle_3.layer.cornerRadius = 25
        stick3.addSubview(circle_3)
        
        let circle_4 = UIView(frame: CGRectMake(0, 0, 50, 50))
        circle_4.backgroundColor = .greenColor()
        circle_4.layer.position = CGPointMake(stick4.frame.width/2-32, stick4.frame.height/2+80)
        circle_4.layer.cornerRadius = 25
        stick4.addSubview(circle_4)
        
        let circle_5 = UIView(frame: CGRectMake(0, 0, 50, 50))
        circle_5.backgroundColor = .orangeColor()
        circle_5.layer.position = CGPointMake(stick5.frame.width/2-32, stick5.frame.height/2-45)
        circle_5.layer.cornerRadius = 25
        stick5.addSubview(circle_5)
        
        let circle_6 = UIView(frame: CGRectMake(0, 0, 50, 50))
        circle_6.backgroundColor = .purpleColor()
        circle_6.layer.position = CGPointMake(stick6.frame.width/2-32, stick5.frame.height/2+80)
        circle_6.layer.cornerRadius = 25
        stick6.addSubview(circle_6)








        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
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

//
//  KRAdditional.swift
//  Kontact
//
//  Created by maekawakazuma on 2016/02/08.
//  Copyright © 2016年 maekawakazuma. All rights reserved.
//

import Foundation

//
//  KRAdditions.swift
//
//  Copyright (c) 2015年 Krimpedance. All rights reserved.
//

import UIKit


/**
 *  Synchronized Class ---------------------------------------------------------
 */
class AutoSync {
    let object :AnyObject
    
    init(obj :AnyObject) {
        object = obj
        objc_sync_enter(object)
    }
    
    deinit {
        objc_sync_exit(object)
    }
}


/**
 *  UIView ---------------------------------------------------------
 */
extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth :CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor :UIColor {
        get {
            return (layer.borderColor != nil) ? UIColor(CGColor: layer.borderColor!) : UIColor.whiteColor()
        }
        set {
            layer.borderColor = newValue.CGColor
        }
    }
    
    @IBInspectable var myBackgroundColor :UIColor{
        get{
            return (layer.backgroundColor != nil) ? UIColor(CGColor: layer.backgroundColor!) : UIColor.whiteColor()
        }
        set {
            layer.backgroundColor = newValue.CGColor
        }
    }
    
    /// partially cornerRadius
    func cornerRadius(roundingCorners roundingCorners :UIRectCorner, radius :CGFloat) {
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: roundingCorners, cornerRadii: CGSizeMake(radius, radius))
        
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.CGPath
        
        self.layer.mask = maskLayer
    }
}


/**
 *  String ---------------------------------------------------------
 */
extension String {
    /// URL encoding
    func urlEncodedString() -> String {
        return self.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
    }
    
    /// URL decoding
    func urlDecodedString() -> String {
        return self.stringByRemovingPercentEncoding!
    }
}


/**
 *  UIColor ---------------------------------------------------------
 */
extension UIColor {
    /// intColor with alpha
    convenience init(intRed red :Int, green :Int, blue :Int, alpha :CGFloat) {
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha:alpha)
    }
    
    /// intColor
    convenience init(intRed red :Int, green :Int, blue :Int) {
        self.init(intRed: red, green: green, blue: blue, alpha: 1.0)
    }
    
    /// Hex
    convenience init(hex :UInt32) {
        let r = Int32((hex & 0xFF0000) >> 16)
        let g = Int32((hex & 0x00FF00) >> 8)
        let b = Int32(hex & 0x0000FF)
        
        self.init(intRed: Int(r), green: Int(g), blue: Int(b))
    }
    
    /// Hex with alpha
    convenience init(aHex :UInt32) {
        let r = Int32((aHex >> 24) & 0xFF)
        let g = Int32((aHex >> 16) & 0xFF)
        let b = Int32((aHex >> 8) & 0xFF)
        let a = Int32(aHex & 0xFF)
        
        self.init(intRed: Int(r), green: Int(g), blue: Int(b), alpha: CGFloat(a))
    }
    
    /// Hex String
    convenience init(hexStr :String) {
        let str = hexStr.stringByReplacingOccurrencesOfString("#", withString: "")
        
        let colorScanner = NSScanner(string: str)
        var color :UInt32 = 0
        colorScanner.scanHexInt(&color)
        
        self.init(hex: color)
    }
    
    /// Hex String with alpha
    convenience init(aHexStr :String) {
        let str = aHexStr.stringByReplacingOccurrencesOfString("#", withString: "")
        
        let colorScanner = NSScanner(string: str)
        var color :UInt32 = 0
        colorScanner.scanHexInt(&color)
        
        self.init(hex: color)
    }
    
    /// Random color
    class func getRandomColor() -> UIColor {
        let red = Int(arc4random_uniform(256))
        let green = Int(arc4random_uniform(256))
        let blue = Int(arc4random_uniform(256))
        
        return UIColor(intRed: red, green: green, blue: blue)
    }
    
    /// Random color with alpha
    class func getRandomColor(alpha :CGFloat) -> UIColor {
        let red = Int(arc4random_uniform(256))
        let green = Int(arc4random_uniform(256))
        let blue = Int(arc4random_uniform(256))
        
        return UIColor(intRed: red, green: green, blue: blue, alpha: alpha)
    }
}


/**
 *  NSDictionary ---------------------------------------------------------
 */
extension NSDictionary {
    /// @{ @"key":@"value", ...}   =>  "key=value&..." に変換
    func httpBuildQuery() -> String {
        // 再帰関数
        var buildQuery :((String, AnyObject) -> String)!
        buildQuery = { (key :String, value :AnyObject) -> String in
            var str = String()
            
            if(value is NSArray) {
                // arrayの場合
                var idx :Int = 0
                for element in (value as! NSArray) {
                    str += buildQuery(key + "[" + String(idx) + "]", element)
                    idx = idx + 1
                }
            } else if (value is NSDictionary) {
                // dictionaryの場合
                let valueDict = value as! NSDictionary
                for element in (valueDict.allKeys as! [String]) {
                    str += buildQuery(key + "[" + element + "]", valueDict[element]!)
                }
            } else {
                str += key.urlEncodedString() + "=" + (value as! String).urlEncodedString() + "&"
            }
            
            return str
        }
        
        var str = ""
        for key in (self.allKeys as! [String]) {
            str += buildQuery(key, self[key]!)
        }
        
        // 最後の & は削除する
        str = str.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: "&"))
        
        return str
    }
    
}


/**
 * NSURL
 */
extension NSURL {
    /// Query を [Key : Value, ....] に変換
    func parseParams() -> [String : String] {
        guard let queryPairs :[String] = self.query?.componentsSeparatedByString("&") else { return [:] }
        
        var querys :[String : String] = [:]
        
        for queryPair :String in queryPairs {
            let pairs = queryPair.componentsSeparatedByString("=")
            if pairs.count < 2 { continue }
            
            let key :String = pairs[0].urlDecodedString()
            let value :String  = pairs[1].urlDecodedString()
            
            querys[key] = value
        }
        
        return querys
    }
}


/**
 *  Array
 */
extension SequenceType {
    public func forEach<U :SequenceType>(
        other: U,
        @noescape body: (Self.Generator.Element, U.Generator.Element) throws -> Void
        ) rethrows {
            assert(self.underestimateCount() == other.underestimateCount())
            var g1 = self.generate()
            var g2 = other.generate()
            
            for _ in self {
                try body(g1.next()!, g2.next()!)
            }
    }
    
    func map<U>(other: [Self.Generator.Element], @noescape transform: (Self.Generator.Element, Self.Generator.Element) throws -> U) rethrows -> [U] {
        assert(self.underestimateCount() == other.count)
        var v = [U]()
        var g = self.generate()
        for i in 0 ..< self.underestimateCount() {
            v.append(try transform(g.next()!, other[i]))
        }
        return v
    }
    
    func wFor(
        other: [Self.Generator.Element],
        @noescape transform: (Generator.Element, Generator.Element) throws -> Void
        ) rethrows {
            var g = generate()
            
            for _ in 0 ..< self.underestimateCount() {
                let e = g.next()!
                for j in 0 ..< other.count {
                    try transform(e, other[j])
                }
            }
    }
}


/**
 *  UIImageVIew
 */
extension UIImageView {
    /// full screen imageView
    convenience init(superViewFrame: CGRect, imageName :String) {
        self.init(frame: superViewFrame)
        self.contentMode = .ScaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let image = UIImage(named: imageName) ?? UIImage()
        self.image = image
        
        let imageSize = image.size
        var frame = self.bounds
        frame.size.height = frame.width * imageSize.height / imageSize.width
        self.frame = frame
    }
}


/**
 *  Bool
 */
extension Bool {
    func toggle() -> Bool {
        return !self
    }
}
//
//  NSThread.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//

import UIKit

extension NSThread {
    /**
     GCDによる時間遅延処理

     - parameter delayTime: 遅延時間
     - parameter handler:  遅延後の処理
     */
    public static func afterDelay(delayTime: Double, handler: () -> Void) {
        let when = dispatch_time(DISPATCH_TIME_NOW, Int64(delayTime * Double(NSEC_PER_SEC)))
        dispatch_after(when, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), handler)
    }

    /**
     GCDによるメインスレッドでの処理

     - parameter handler:  メインスレッドで行う処理
     */
    public static func onMainQueue(handler: () -> Void) {
        dispatch_async(dispatch_get_main_queue()) {
            handler()
        }
    }

    /**
     GCDによるコンカレントキューでの処理

     - parameter handler:  行う処理
     */
    public static func onConcurrentQueue(handler: () -> Void) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), handler)
    }

    /**
     GCDによるシリアルキューでの処理

     - parameter name: キューの名前(省略可)
     - parameter handler:  行う処理
     */
    public static func onSerialQueue(name: String = "DefaultSerialQueue", handler: () -> Void) {
        dispatch_async(dispatch_queue_create(name, DISPATCH_QUEUE_SERIAL), handler)
    }
}

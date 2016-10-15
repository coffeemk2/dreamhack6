//
//  AutoSync.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//

 /**
   スレッドセーフ用のクラス．
   Obj-C の `@synchronized` と同じ動作をする．

   ```
    AutoSync.sync(self) {
        // スレッドセーフ
    }
   ```
 */
public class AutoSync {
    class func sync(obj: AnyObject, closure:()->()) {
        objc_sync_enter(obj)
        closure()
        objc_sync_exit(obj)
    }
}

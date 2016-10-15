//
//  TLUtils.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//

import SystemConfiguration
import SafariServices

public class PDUtility {
    /**
    ネットワークに接続されているか判定する

    - returns: ネットワークに接続されている -> true
    */
    public class func isConnectNetwork() -> Bool {
        var zeroAddress = sockaddr_in(
            sin_len: 0,
            sin_family: 0,
            sin_port: 0,
            sin_addr: in_addr(s_addr: 0),
            sin_zero: (0, 0, 0, 0, 0, 0, 0, 0)
        )
        zeroAddress.sin_len = UInt8(sizeofValue(zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)

        let reachability = withUnsafePointer(&zeroAddress) {
            SCNetworkReachabilityCreateWithAddress(nil, UnsafePointer($0))
        }

        var flags = SCNetworkReachabilityFlags.ConnectionAutomatic

        if !SCNetworkReachabilityGetFlags(reachability!, &flags) { return false }

        let isReachable = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
        let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0

        return (isReachable && !needsConnection)
    }


    /**
     指定URLへのブラウザアクセス．条件によって表示方法が異なる．

     - iOS9 未満: Safari を起動してアクセス
     - iOS9 以上 (delegate 指定なし): Safari を起動してアクセス
     - iOS9 以上 (delegate 指定あり): CFSafariViewController をモーダル表示してアクセス

     - parameter url:   ブラウズする URL
     - parameter presentingViewController:  SFSafariViewController を使用する場合の表示するUIViewControllerを指定する
     */
    public class func webTo(url url: NSURL, presentingViewController: UIViewController? = nil) {
        guard #available(iOS 9.0, *) else {
            UIApplication.sharedApplication().openURL(url)
            return
        }

        guard let presentingVC = presentingViewController else {
            UIApplication.sharedApplication().openURL(url)
            return
        }

        let safariVC = SFSafariViewController(URL:url)
        presentingVC.presentViewController(safariVC, animated: true, completion: nil)
    }
}

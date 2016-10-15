//
//  NSURL.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//

extension NSURL {
    /**
     クエリ `"?key=value&..."` を Dictionary `{ @"key":@"value", ...}` に変換

     - returns: [String: String]
     */
    public func parseParams() -> [String: String] {
        guard let queryPairs: [String] = self.query?.componentsSeparatedByString("&") else { return [:] }

        var querys: [String: String] = [:]

        queryPairs.forEach { queryPair in
            let pairs = queryPair.componentsSeparatedByString("=")
            if pairs.count != 2 { return }

            guard case let (key?, value?) = (pairs[0].urlDecodedString(), pairs[1].urlDecodedString()) else { return }
            querys[key] = value
        }

        return querys
    }
}

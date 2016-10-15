//
//  Dictionary.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//
extension Dictionary where Value: AnyObject {
    /**
     配列 `[String: AnyObject]`  をクエリ `"key=value&..."` に変換する

     - returns: String("key=value&...")
     */
    public func convertToQuery() -> String {
        func buildQuery(key: String, value: AnyObject) -> String {
            var str = ""

            if let arr = value as? [AnyObject] {
                // Array の場合
                arr.enumerate().forEach { index, val in
                    str += buildQuery("\(key)[\(index)]", value: val)
                }
            } else if let dict = value as? [String: AnyObject] {
                // Dictionary の場合
                dict.forEach {
                    str += buildQuery("\(key)[\($0.0)]", value: $0.1)
                }
            } else {
                str += "\(key.urlEncodedString())=\((value.description).urlEncodedString())&"
            }
            return str
        }

        var str = ""

        self.forEach {
            guard let key = $0.0 as? String else { return }
            str += buildQuery(key, value: $0.1)
        }

        // 最後の `&` を削除
        str = str.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: "&"))

        return str
    }
}

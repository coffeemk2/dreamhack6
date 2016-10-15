//
//  String.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//

extension String {
    /**
     URLエンコード

     - returns: Optional(String)
    */
    public func urlEncodedString() -> String? {
        return self.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())
    }

    /**
     URLデコード

     - returns: Optional(String)
    */
    public func urlDecodedString() -> String? {
        return self.stringByRemovingPercentEncoding
    }
}

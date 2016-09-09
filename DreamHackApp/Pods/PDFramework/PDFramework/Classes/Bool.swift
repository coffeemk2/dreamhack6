//
//  Bool.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//

extension Bool {
    /**
     `true`と`false`の切り替え
     */
    public mutating func toggle() {
        self = !self
    }
}

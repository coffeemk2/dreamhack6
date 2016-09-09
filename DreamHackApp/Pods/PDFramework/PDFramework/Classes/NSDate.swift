//
//  NSDate.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//

extension NSDate: Comparable {}
public func == (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedSame
}

public func > (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedDescending
}

public func < (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedAscending
}

public func <= (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs < rhs || lhs == rhs
}

public func >= (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs > rhs || lhs == rhs
}

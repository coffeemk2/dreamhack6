//
//  SequenceType.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//
// swiftlint:disable valid_docs

extension SequenceType {
    /**
     別の SequenceType も同時に `forEach` にかける．
     二つの大きさは等しい必要がある.

     - parameter other: 同時に回す SequenceType
     - parameter body:  順番に一要素ずつ入る
     */
    public func forEach<U :SequenceType>( other: U, @noescape body: (Self.Generator.Element, U.Generator.Element) throws -> Void) rethrows {
            assert(self.underestimateCount() == other.underestimateCount())
            var g1 = self.generate()
            var g2 = other.generate()

            for _ in self {
                try body(g1.next()!, g2.next()!)
            }
    }

    /**
     別の SequenceType も同時に `map` にかける．
     二つの大きさは等しい必要がある.

     - parameter other: 同時に回す SequenceType
     - parameter transform:  順番に一要素ずつ入る

     - returns: transform 内での返り値の配列が返る
     */
    public func map<U>(other: [Self.Generator.Element], @noescape transform: (Self.Generator.Element, Self.Generator.Element) throws -> U) rethrows -> [U] {
        assert(self.underestimateCount() == other.count)
        var v = [U]()
        var g = self.generate()
        for i in 0 ..< self.underestimateCount() {
            v.append(try transform(g.next()!, other[i]))
        }
        return v
    }

    /**
     2重ループをまわす.動作は通常の2重ループと同じ．

     - parameter other: ループにかける SequenceType
     - parameter transform:  順番に一要素ずつ入る
     */
    public func wFor(
        other: [Self.Generator.Element],
        @noescape transform: (Generator.Element, Generator.Element) throws -> Void
        ) rethrows -> Void {
        var g = generate()

        for _ in 0 ..< self.underestimateCount() {
            let e = g.next()!
            for j in 0 ..< other.count {
                try transform(e, other[j])
            }
        }
    }
}

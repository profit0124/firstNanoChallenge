//
//  File.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/04/28.
//

import Foundation


struct Stack<T> {
    public var stack: [T] = []
    
    public var count: Int {
        return stack.count
    }
    
    public var isEmpty: Bool {
        return stack.isEmpty
    }
    
    public mutating func push(_element:T) {
        stack.append(_element)
    }
    
    public mutating func pop() -> T? {
        return isEmpty ? nil : stack.popLast()!
    }
}

//
//  MemoryModel.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/4/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import Foundation

class MemoryModel: NSObject {
    static let sharedInstance = MemoryModel()
    private override init() {}
    
    var memories = [Memory]()
    
    static func setMemories(){
        MemoryModel.sharedInstance.memories.append(Memory(id: 0, user1_id: 0, user2_id: 1, content: "", image: nil))
        
    }
}

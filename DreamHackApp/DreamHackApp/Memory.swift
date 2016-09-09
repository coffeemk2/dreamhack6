//
//  Memory.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/4/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import Foundation

class Memory: NSObject {
    var id : Int
    var user1_id : Int
    var user2_id : Int
    var content : String
    var image: String?
    
    init(id:Int, user1_id:Int, user2_id:Int, content:String , image: String?) {
        self.id = id
        self.content = content
        self.user1_id = user1_id
        self.user2_id = user2_id
        if let image = image{
            self.image = image
        }
    }
}
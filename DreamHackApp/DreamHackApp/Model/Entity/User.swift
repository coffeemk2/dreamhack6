//
//  User.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/4/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import Foundation

class User:NSObject{
    var id:Int = 0
    var user_id:String = ""
    var name:String = ""
    var profile:String = ""
    var image:String = ""
    
    override init() {}
    
    init(id:Int,user_id:String,name:String,profile:String,image:String) {
        self.id = id
        self.user_id = user_id
        self.name = name
        self.profile = profile
        self.image = image
    }
}
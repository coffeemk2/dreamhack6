//
//  Relation.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/4/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import Foundation

class Relation:NSObject{
    
    var id:Int = 0
    var name: String = ""
    
    init(id:Int,name:String){
        self.id = id
        self.name = name
    }
}
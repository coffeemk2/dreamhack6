//
//  ParentModel.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/4/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import Foundation

class Parent:NSObject{
    
    var parent : User = User()
    var child : [(user:User,relation:Relation)]? = [(user:User,relation:Relation)]()
    
    init(parent:User,child:[(user:User,relation:Relation)]?) {
        self.parent = parent
        if let child = child{
            self.child = child
        }
    }
    
}

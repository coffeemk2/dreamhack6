//
//  ParentModel.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/9/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import Foundation

class ParentModel: NSObject {
    static let sharedInstsance = ParentModel()
    private override init() { }
    
    
    var parents = [Parent]()
    
    static func setParents(){
        let users = UserModel.sharedInstance.users
        let relations = RelationModel.sharedInstance.relations
        
        
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[0], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
//        ParentModel.sharedInstsance.parents.append(Parent(parent: users[1], child: [ (users[], relations[0]), (users[3], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))


        
        
    }
    
    static func getParentsIndexFromUserId(id:Int) -> Int?{
        
        for (index,parent) in ParentModel.sharedInstsance.parents.enumerate() {
            if parent.parent.id == id{
                return index
            }
        }
        return nil
    }
    
}
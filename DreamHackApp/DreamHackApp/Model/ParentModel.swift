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
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[1], child: [ (users[6], relations[0]), (users[7], relations[0]), (users[8],relations[0]),(users[9],relations[0]),(users[10],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[2], child: [ (users[11], relations[0]), (users[12], relations[0]), (users[13],relations[0]),(users[14],relations[0]),(users[15],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[3], child: [ (users[16], relations[0]), (users[17], relations[0]), (users[18],relations[0]),(users[19],relations[0]),(users[20],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[4], child: [ (users[21], relations[0]), (users[22], relations[0]), (users[23],relations[0]),(users[24],relations[0]),(users[25],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[5], child: [ (users[26], relations[0]), (users[27], relations[0]), (users[28],relations[0]),(users[29],relations[0]),(users[30],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[6], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[7], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[8], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[9], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[10], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[11], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[12], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[13], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[14], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[15], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[16], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[17], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[18], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[19], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[20], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[21], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[22], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[23], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[24], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[25], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[26], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[27], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[28], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[29], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))
        ParentModel.sharedInstsance.parents.append(Parent(parent: users[30], child: [ (users[1], relations[0]), (users[2], relations[0]), (users[3],relations[0]),(users[4],relations[0]),(users[5],relations[3]) ]))







        


        
        
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
//
//  RelationModel.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/9/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import Foundation

class RelationModel :NSObject{
    static let sharedInstance = RelationModel()
    private override init() {}
    
    var relations = [Relation]()
    
    static func setRelation(){
        RelationModel.sharedInstance.relations.append(Relation(id: 0, name: "友達"))
        RelationModel.sharedInstance.relations.append(Relation(id: 1, name: "親友"))
        RelationModel.sharedInstance.relations.append(Relation(id: 2, name: "恋人"))
        RelationModel.sharedInstance.relations.append(Relation(id: 3, name: "先輩後輩"))
        RelationModel.sharedInstance.relations.append(Relation(id: 4, name: "家族"))
    }
}
//
//  UserModel.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/4/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import Foundation

class UserModel:NSObject{
    static let sharedInstance = UserModel()
    private override init() {}
    
    var users = [User]()
    
    static func setUsers(){
        UserModel.sharedInstance.users.append(User(id: 0, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon0"))
        UserModel.sharedInstance.users.append(User(id: 1, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon1"))
        UserModel.sharedInstance.users.append(User(id: 2, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon2"))
        UserModel.sharedInstance.users.append(User(id: 3, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon3"))
        UserModel.sharedInstance.users.append(User(id: 4, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon4"))
        UserModel.sharedInstance.users.append(User(id: 5, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon5"))
        UserModel.sharedInstance.users.append(User(id: 6, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon6"))
        UserModel.sharedInstance.users.append(User(id: 7, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon7"))
        UserModel.sharedInstance.users.append(User(id: 8, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon8"))
        UserModel.sharedInstance.users.append(User(id: 9, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon9"))
        UserModel.sharedInstance.users.append(User(id: 10, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon10"))
        UserModel.sharedInstance.users.append(User(id: 11, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon11"))
        UserModel.sharedInstance.users.append(User(id: 12, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon12"))
        UserModel.sharedInstance.users.append(User(id: 13, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon13"))
        UserModel.sharedInstance.users.append(User(id: 14, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon14"))
        UserModel.sharedInstance.users.append(User(id: 15, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon15"))
        UserModel.sharedInstance.users.append(User(id: 16, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon16"))
        UserModel.sharedInstance.users.append(User(id: 17, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon17"))
        UserModel.sharedInstance.users.append(User(id: 18, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon18"))
        UserModel.sharedInstance.users.append(User(id: 19, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon19"))
        UserModel.sharedInstance.users.append(User(id: 20, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon20"))
        UserModel.sharedInstance.users.append(User(id: 21, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon21"))
        UserModel.sharedInstance.users.append(User(id: 22, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon22"))
        UserModel.sharedInstance.users.append(User(id: 23, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon23"))
        UserModel.sharedInstance.users.append(User(id: 24, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon24"))
        UserModel.sharedInstance.users.append(User(id: 25, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon25"))
        UserModel.sharedInstance.users.append(User(id: 26, user_id: "tokio", name: "", profile: "ときおですぅ", image: "icon26"))
        
    }

}
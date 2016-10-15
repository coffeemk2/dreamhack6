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
        
        
        UserModel.sharedInstance.users.append(User(id: 0, user_id: "tokio", name: "ときお", profile: "ときおですぅ", image: "icon0"))
        UserModel.sharedInstance.users.append(User(id: 1, user_id: "kota", name: "こうた", profile: "こうたですぅ", image: "icon1"))
        UserModel.sharedInstance.users.append(User(id: 2, user_id: "hiropon", name: "ひろき", profile: "バンドでギタボしてます！", image: "icon2"))
        UserModel.sharedInstance.users.append(User(id: 3, user_id: "mikity", name: "みきてぃー", profile: "福岡中学校に通っています。よろしく" ,image: "icon3"))
        UserModel.sharedInstance.users.append(User(id: 4, user_id: "smap", name: "つよし", profile: "佐々木高校1年のテニス部です", image: "icon4"))
        UserModel.sharedInstance.users.append(User(id: 5, user_id: "arasi", name: "しょう", profile: "吉野小/紫原中/サッカー部", image: "icon5"))
        UserModel.sharedInstance.users.append(User(id: 6, user_id: "okkun", name: "けんしろう", profile: "宮崎をどげんかせんといかん！！！と思っています", image: "icon6"))
        UserModel.sharedInstance.users.append(User(id: 7, user_id: "yutchan", name: "ゆういち", profile: "野球部です。セカンドしてます。", image: "icon7"))
        UserModel.sharedInstance.users.append(User(id: 8, user_id: "pengin", name: "けんすけ", profile: "ペンギンが大大大大大好きです（笑）", image: "icon8"))
        UserModel.sharedInstance.users.append(User(id: 9, user_id: "erina", name: "えりな", profile: "ソロぼっち極めてます…", image: "icon9"))
        UserModel.sharedInstance.users.append(User(id: 10, user_id: "maemae", name: "まえまえ", profile: "イケメンはズルい！！！！？！", image: "icon10"))
        UserModel.sharedInstance.users.append(User(id: 11, user_id: "yokoyoko", name: "よこよこ", profile: "俺に任せろ！！", image: "icon11"))
        UserModel.sharedInstance.users.append(User(id: 12, user_id: "usirouriro", name: "うしろうしろ", profile: "", image: "icon12"))
        UserModel.sharedInstance.users.append(User(id: 13, user_id: "okamu", name: "おかむー", profile: "こんにちは！仲良くしてください", image: "icon13"))
        UserModel.sharedInstance.users.append(User(id: 14, user_id: "tamon", name: "たもん", profile: "もう少しで魔法使いになれるかも、、、", image: "icon14"))
        UserModel.sharedInstance.users.append(User(id: 15, user_id: "brian", name: "ブライアン", profile: "ほりほり〜〜〜〜〜", image: "icon15"))
        UserModel.sharedInstance.users.append(User(id: 16, user_id: "seriion", name: "にっしー", profile: "バイト戦士・彼女募集中", image: "icon16"))
        UserModel.sharedInstance.users.append(User(id: 17, user_id: "naoki", name: "なおき", profile: "手層占いなら任せてください。", image: "icon17"))
        UserModel.sharedInstance.users.append(User(id: 18, user_id: "valai", name: "ばらい", profile: "基本的に人見知りなんですがよろしくお願いいたします", image: "icon18"))
        UserModel.sharedInstance.users.append(User(id: 19, user_id: "chums", name: "うさぎ", profile: "うさぎ好きの方は絡んできてください", image: "icon19"))
        UserModel.sharedInstance.users.append(User(id: 20, user_id: "tomoe", name: "ともえ", profile: "バレー部です。誰でも絡んでね。", image: "icon20"))
        UserModel.sharedInstance.users.append(User(id: 21, user_id: "fankami", name: "村上", profile: "プログラミング楽しいよー", image: "icon21"))
        UserModel.sharedInstance.users.append(User(id: 22, user_id: "ethuko", name: "えつこ", profile: "ぶひっ", image: "icon22"))
        UserModel.sharedInstance.users.append(User(id: 23, user_id: "kane", name: "つっきー", profile: "彼女いるけど彼女欲しい", image: "icon23"))
        UserModel.sharedInstance.users.append(User(id: 24, user_id: "akkey", name: "あっきー", profile: "　swift大好な人仲良くしてください", image: "icon24"))
        UserModel.sharedInstance.users.append(User(id: 25, user_id: "ellie", name: "エリー", profile: "よく絵を描きます。リクエスト待ってます", image: "icon25"))
        UserModel.sharedInstance.users.append(User(id: 26, user_id: "hoge", name: "堀口", profile: "ホモーーーーーーーー！", image: "icon26"))
        UserModel.sharedInstance.users.append(User(id: 27, user_id: "cat", name: "みゃーこ", profile: "お魚がすごく大好です。", image: "icon27"))
        UserModel.sharedInstance.users.append(User(id: 28, user_id: "dog", name: "かずお", profile: "中学一年生です。タメの方待ってます", image: "icon28"))
        UserModel.sharedInstance.users.append(User(id: 29, user_id: "coffee", name: "キリマンジャロ", profile: "金の微糖エメマン", image: "icon29"))
        UserModel.sharedInstance.users.append(User(id: 30, user_id: "circle", name: "ガリレオガリレイ", profile: "実に面白い！！！！", image: "icon30"))
        
    }
    
    static func getUser(id:Int)->User?{
        for user in UserModel.sharedInstance.users{
            if user.id == id{
                return user
            }
        }
        return nil
    }
}
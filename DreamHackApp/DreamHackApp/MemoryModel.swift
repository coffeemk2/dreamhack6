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
        MemoryModel.sharedInstance.memories.append(Memory(id: 0, user1_id: 0, user2_id: 1, content: "えつこちゃんの家でお菓子作り！美味しくできたー！今度は", image: nil))
        MemoryModel.sharedInstance.memories.append(Memory(id: 1, user1_id: 0, user2_id: 3, content: "昨日は家族でネズミーランドに行った！弟がお化け屋敷で怖がってて可愛かった（笑）", image: nil))
        MemoryModel.sharedInstance.memories.append(Memory(id: 2, user1_id: 9, user2_id: 20, content: "タケシとの野球観戦サイコー！！", image: nil))
        MemoryModel.sharedInstance.memories.append(Memory(id: 3, user1_id: 14, user2_id: 8, content: "今日はトモちゃんとオケったょ♡そのあと一緒にプリもとったー", image: nil))
        MemoryModel.sharedInstance.memories.append(Memory(id: 4, user1_id: 20, user2_id: 17, content: "ひろき先輩今日も自主練頑張っててカッコよかったぁ", image: nil))
        MemoryModel.sharedInstance.memories.append(Memory(id: 5, user1_id: 29, user2_id: 10, content: "今日はカズマくんと付き合い始めて1ヶ月記念日(*^o^*)　これからもよろしくね！", image: nil))
        MemoryModel.sharedInstance.memories.append(Memory(id: 6, user1_id: 12, user2_id: 11, content: "うちらイツメン！みきとは一生親友だょ", image: nil))
        MemoryModel.sharedInstance.memories.append(Memory(id: 7, user1_id: 27, user2_id: 28, content: "あゆみんとの映画楽しかったな！また行こうね", image: nil))
        MemoryModel.sharedInstance.memories.append(Memory(id: 8, user1_id: 18, user2_id: 4, content: "昨日の試合は接戦だった！！ケンちゃんとは高校でも一緒にサッカーしたいな！！！", image: nil))
        MemoryModel.sharedInstance.memories.append(Memory(id: 9, user1_id: 2, user2_id: 3, content: "2年生も今日で最後…今までめっちゃ楽しかった！2年1組マジ最高！！！奥田先生もありがとう", image: nil))
        
    }
}

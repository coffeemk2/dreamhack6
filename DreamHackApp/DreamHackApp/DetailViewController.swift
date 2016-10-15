//
//  DetailViewController.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/4/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myId: UILabel!
    @IBOutlet weak var yourImage: UIImageView!
    @IBOutlet weak var yourLabel: UILabel!
    @IBOutlet weak var yourId: UILabel!
    @IBOutlet weak var content: UITextView!
    
    var index:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let memory = MemoryModel.sharedInstance.memories[index]
        
        content.text = memory.content
        
        guard let user1 = UserModel.getUser(memory.user1_id) else {return }
        guard let user2 = UserModel.getUser(memory.user2_id ) else {return }
        
        myImage.image = UIImage(named: user1.image)
        myLabel.text = user1.name
        myId.text = user1.user_id
        
        yourImage.image = UIImage(named: user2.image)
        yourLabel.text = user2.name
        yourId.text = user2.user_id
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

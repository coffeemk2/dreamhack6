//
//  AddMemoryViewController.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/8/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import UIKit
import PDFramework

class AddMemoryViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myId: UILabel!
    @IBOutlet weak var yourImageView: UIImageView!
    @IBOutlet weak var yourLabel: UILabel!
    @IBOutlet weak var yourId: UILabel!

    @IBOutlet weak var content: UITextView!
    
    var index:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let me = UserModel.getUser(0) else {return }
        guard let you = UserModel.getUser(index) else {return }
        
        myImageView.image = UIImage(named: me.image)
        myLabel.text = me.name
        myId.text = me.user_id
        
        yourImageView.image = UIImage(named: you.image)
        yourLabel.text = you.name
        yourId.text = you.user_id
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submit(sender: AnyObject) {
        PDAlert(title: "確認", message: "思い出を追加しました", preferredStyle: .Alert).addOK { (action, textFields) in
            self.navigationController?.popToRootViewControllerAnimated(true)
        }.show()
        
    }

    @IBAction func tap(sender: AnyObject) {
        self.view.endEditing(true)
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

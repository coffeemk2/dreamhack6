//
//  ProfileViewController.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/4/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let userModel = UserModel.sharedInstance
    
    @IBAction func tap(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var profile: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = userModel.users[0]
        myImage.image = UIImage(named: user.image)
        id.text = user.user_id
        userName.text = user.name
        profile.text = user.profile
        

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

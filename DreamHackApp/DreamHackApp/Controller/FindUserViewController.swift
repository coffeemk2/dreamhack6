//
//  FindUserViewController.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/8/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import UIKit

class FindUserViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    
    let userModel = UserModel.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
//        tapGesture.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension FindUserViewController:UIGestureRecognizerDelegate{
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool {
        if touch.view != gestureRecognizer.view{
            return false
        }
        return true
    }
}


extension FindUserViewController:UITableViewDelegate,UITableViewDataSource{

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userModel.users.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("user", forIndexPath: indexPath) as! UserTableViewCell
        
        let user = userModel.users[indexPath.row]
        cell.thumbnail?.image = UIImage(named: user.image)
        cell.name.text = user.name
        cell.user_id.text = user.user_id
        cell.profile.text = user.profile

        
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
}
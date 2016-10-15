//
//  AddRelationViewController.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/4/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import UIKit
import PDFramework

class AddRelationViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let pickerCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "picker")
    
    let relation = ["友達", "親友", "恋人", "先輩後輩", "家族"]
    
    var index:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        
        guard let user = UserModel.getUser(index) else {return }
        imageView.image = UIImage(named: user.image)
        nameLabel.text = user.name
        idLabel.text = user.user_id
        profileLabel.text = user.profile
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButton(sender: AnyObject) {
        PDAlert(title: "確認", message: "申請を送りました", preferredStyle: .Alert).addOK { (action, textFields) in
            self.navigationController?.popToRootViewControllerAnimated(true)
            }.show()
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

extension AddRelationViewController:UIPickerViewDelegate,UIPickerViewDataSource{
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return relation.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return relation[row]
    }
    
    
}

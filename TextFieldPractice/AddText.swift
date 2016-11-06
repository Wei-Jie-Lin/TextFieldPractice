//
//  AddText.swift
//  TextFieldPractice
//
//  Created by 林暐潔 on 2016/11/6.
//  Copyright © 2016年 林暐潔. All rights reserved.
//

import UIKit

class AddText: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var textOne: UITextField!
    @IBOutlet weak var textTwo: UITextField!
    @IBOutlet weak var showText: UILabel!
    
    
    
    @IBAction func addButton(_ sender: Any) {
        
        let str1 = textOne.text
        let str2 = textTwo.text
        
        if str1 == "" && str2 == "" {
            showText.text = "您還沒有輸入唷。"
        } else if str1 == "" {
            showText.text = str2!
        } else if str2 == "" {
            showText.text = str1!
        } else {
            showText.text = str1! + str2!
        }
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textOne.resignFirstResponder()
        textTwo.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

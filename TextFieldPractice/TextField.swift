//
//  ViewController.swift
//  TextFieldPractice
//
//  Created by 林暐潔 on 2016/11/6.
//  Copyright © 2016年 林暐潔. All rights reserved.
//

import UIKit

class TextField: UIViewController, UITextFieldDelegate {

    
    
    
    // Text Field
    
    @IBOutlet weak var textFieldCount: UITextField!
    @IBOutlet weak var showCount: UILabel!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        let num = (textFieldCount.text?.characters.count)! + string.characters.count - range.length
        
        showCount.text = "\(num)"
        if num > 10 {
            showCount.text = "已超過輸入限制"
            return false
        }
        return num <= 10
    }
    
    // 收鍵盤
    func hideKeyboard(_ tapG:UITapGestureRecognizer){
        self.view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //預設值
        showCount.text = "\((textFieldCount.text?.characters.count)!)"
        
        // 增加一個觸控事件
        let tap = UITapGestureRecognizer(target: self, action: #selector(TextField.hideKeyboard(_:)))
        tap.cancelsTouchesInView = false
        // 加入觸控
        self.view.addGestureRecognizer(tap)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


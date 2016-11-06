//
//  TextView.swift
//  TextFieldPractice
//
//  Created by 林暐潔 on 2016/11/6.
//  Copyright © 2016年 林暐潔. All rights reserved.
//

import UIKit

class TextView: UIViewController, UITextViewDelegate {
    
    
    
    // Text View
    
    @IBOutlet weak var textViewCount: UITextView!
    @IBOutlet weak var showViewCount: UILabel!
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        
        let num = (textViewCount.text?.characters.count)! + text.characters.count - range.length
        
        showViewCount.text = "\(num)"
        if num > 10 {
            showViewCount.text = "已超過輸入限制"
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
        showViewCount.text = "\((textViewCount.text?.characters.count)!)"
        
        // 增加一個觸控事件
        let tap = UITapGestureRecognizer(target: self, action: #selector(TextView.hideKeyboard(_:)))
        tap.cancelsTouchesInView = false
        // 加入觸控
        self.view.addGestureRecognizer(tap)

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

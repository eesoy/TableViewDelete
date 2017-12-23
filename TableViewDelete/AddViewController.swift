//
//  AddViewController.swift
//  TableViewDelete
//
//  Created by soyoung on 2017. 12. 23..
//  Copyright © 2017년 soyoung. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var btn_addItem: UIButton!
    @IBOutlet weak var txt_addItem: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addItemClicked(_ sender: UIButton) {
        if let todoItem = txt_addItem.text {
            todoArray.append(todoItem)
            iconArray.append("pencil")
            navigationController?.popViewController(animated: true)
        }
    }

}

//
//  AddViewController.swift
//  TableViewDelete
//
//  Created by soyoung on 2017. 12. 23..
//  Copyright © 2017년 soyoung. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {


    @IBOutlet weak var btn_addItem: UIButton!
    @IBOutlet weak var txt_addItem: UITextField!
    @IBOutlet weak var img_picker: UIImageView!
    @IBOutlet weak var pickerView_item: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView_item.dataSource = self
        pickerView_item.delegate = self
    }
    
    
    @IBAction func addItemClicked(_ sender: UIButton) {
        if let todoItem = txt_addItem.text {
            todoArray.append(todoItem)
            iconArray.append(iconArray[pickerView_item.selectedRow(inComponent: 0)])
            navigationController?.popViewController(animated: true)
        }
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return iconArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: UIImage(named: iconArray[row]))
        imageView.frame = CGRect(x: 0, y: 0, width: 30 , height: 30)
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        img_picker.image = UIImage(named: iconArray[row])
    }

}

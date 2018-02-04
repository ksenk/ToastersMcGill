//
//  Home.swift
//  AnotherTry
//
//  Created by ibironren on 2018-02-03.
//  Copyright © 2018 Ksenia Kolosova. All rights reserved.
//

import UIKit

class Home: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var selectionButton: UIButton!
    
    let cafeList = ["Pikolo Espresso Bar", "Myriade on Mackay", "Myriad St-Denis"]
    
    override func viewDidLoad() {
        
        pickerView.isHidden = true
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func selectPressed(_ sender: UIButton) {
        if pickerView.isHidden {
            pickerView.isHidden = false
        }
    }
   
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cafeList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cafeList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selectionButton.setTitle(cafeList[row], for: .normal)
        pickerView.isHidden = true
    }


}

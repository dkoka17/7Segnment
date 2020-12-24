//
//  ViewController.swift
//  7Segnment
//
//  Created by dato on 12/21/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pickerView: UIPickerView!
    
    @IBOutlet var firstView: MyView!
    @IBOutlet var secondView: MyView!
    @IBOutlet var thirdView: MyView!
    
    override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
          
          pickerView.delegate = self
          pickerView.dataSource = self
      }


}


extension ViewController : UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
}

extension ViewController : UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return row.description
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let numb  = component
        
        if (numb == 0) {
            firstView.changeNumber(int: row)
        } else if numb == 1 {
            secondView.changeNumber(int: row)
        } else if numb == 2 {
            thirdView.changeNumber(int: row)
        }
        
    }
}
 





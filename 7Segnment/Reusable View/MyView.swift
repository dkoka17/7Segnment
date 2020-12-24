//
//  MyView.swift
//  Lecture5Constraints
//
//  Created by Saba Khutsishvili on 10/9/20.
//

import UIKit

class MyView: UIView {
    
    @IBOutlet var contentView: UIView!
    
    var arr: [[Bool]] = []
    
    @IBOutlet var A: UIView!
    @IBOutlet var B: UIView!
    @IBOutlet var C: UIView!
    @IBOutlet var D: UIView!
    @IBOutlet var E: UIView!
    @IBOutlet var F: UIView!
    @IBOutlet var G: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
        setup()
    }
    
    func commonInit() {
        let bundle = Bundle(for: MyView.self)
        bundle.loadNibNamed("MyView", owner: self, options: nil)
        
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(contentView)
    }
    
    func setup() {
        let zero = [true,true,true,true,true,true,false]
        let one = [false,true,true,false,false,false,false]
        let two = [true,true,false,true,true,false,true]
        let three = [true,true,true,true,false,false,true]
        let four = [false,true,true,false,false,true,true]
        let five = [true,false,true,true,false,true,true]
        let six = [true,false,true,true,true,true,true]
        let seven = [true,true,true,false,false,false,false]
        let eight = [true,true,true,true,true,true,true]
        let nine = [true,true,true,false,false,true,true]
        
        arr.append(zero)
        arr.append(one)
        arr.append(two)
        arr.append(three)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        arr.append(seven)
        arr.append(eight)
        arr.append(nine)
        
        changeNumber(int: 0)
        
    }
    
    func changeNumber(int: Int) {
    
        for n in 0...6 {
            print(arr[int][n])
        }
        
        A.isHidden = !arr[int][0]
        B.isHidden = !arr[int][1]
        C.isHidden = !arr[int][2]
        D.isHidden = !arr[int][3]
        E.isHidden = !arr[int][4]
        F.isHidden = !arr[int][5]
        G.isHidden = !arr[int][6]
        
        
    }
}

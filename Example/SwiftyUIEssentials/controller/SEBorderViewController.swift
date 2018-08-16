//
//  SEBorderViewController.swift
//  SwiftyUIEssentials_Example
//
//  Created by Josue Meza Peña on 16-08-18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import SwiftyUIEssentials

class SEBorderViewController: UIViewController {
    
    @IBOutlet weak var borderView: SEBorderView!
    @IBOutlet weak var radiousTextField: UITextField!
    @IBOutlet weak var widthTextField: UITextField!
    @IBOutlet weak var colorSegmentedControl: UISegmentedControl!
    
    var borderRadious: CGFloat {
        get {
            guard let radiousString = radiousTextField.text, let radious = Double(radiousString) else { return 0 }
            return CGFloat(radious)
        }
    }
    
    var borderWidth: CGFloat {
        get {
            guard let widthString = widthTextField.text, let width = Double(widthString) else { return 0 }
            return CGFloat(width)
        }
    }
    
    var borderColor: UIColor {
        get {
            switch colorSegmentedControl.selectedSegmentIndex {
            case 0: return .red
            case 1: return .green
            case 2: return .blue
            default: return .clear
            }
        }
    }
    
    @IBAction func applyAction(_ sender: Any) {
        borderView.border(borderColor, width: borderWidth, radious: borderRadious)
        let textFields = [radiousTextField, widthTextField]
        textFields.forEach { textField in textField?.resignFirstResponder() }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        borderView.border(.red, width: 5, radious: 20)
    }

}

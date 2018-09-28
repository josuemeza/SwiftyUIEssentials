//
//  SEShadowViewController.swift
//  SwiftyUIEssentials_Example
//
//  Created by Josue Meza Peña on 16-08-18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import SwiftyUIEssentials

class SEShadowViewController: UIViewController {
    
    @IBOutlet weak var shadowView: SEShadowView!
    @IBOutlet weak var colorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var opacityTextField: UITextField!
    @IBOutlet weak var radiousTextField: UITextField!
    @IBOutlet weak var offsetXTextField: UITextField!
    @IBOutlet weak var offsetYTextField: UITextField!
    
    var shadowColor: UIColor {
        get {
            switch colorSegmentedControl.selectedSegmentIndex {
            case 0: return .red
            case 1: return .green
            case 2: return .blue
            default: return .clear
            }
        }
    }
    
    var shadowOpacity: Float {
        get {
            guard let opacityString = opacityTextField.text, let opacity = Float(opacityString) else { return 0 }
            return opacity
        }
    }
    
    var shadowRadious: CGFloat {
        get {
            guard let radiousString = radiousTextField.text, let radious = Double(radiousString) else { return 0 }
            return CGFloat(radious)
        }
    }
    
    var shadowOffset: CGSize {
        get {
            guard let xString = offsetXTextField.text, let x = Double(xString) else { return .zero }
            guard let yString = offsetYTextField.text, let y = Double(yString) else { return .zero }
            return CGSize(width: x, height: y)
        }
    }
    
    @IBAction func applyAction(_ sender: Any) {
        shadowView.shadow(color: shadowColor, opacity: shadowOpacity, offset: shadowOffset, radius: shadowRadious)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        shadowView.shadow(color: .red, opacity: 1, offset: CGSize(width: 5, height: 5), radius: 10)
    }

}

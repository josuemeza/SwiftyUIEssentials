//
//  SEGradientViewController.swift
//  SwiftyUIEssentials_Example
//
//  Created by Josue Meza Peña on 14-08-18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import SwiftyUIEssentials

class SEGradientViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var gradientView: SEGradientView!
    @IBOutlet weak var startColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var endColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var startPointXTextField: UITextField!
    @IBOutlet weak var startPointYTextField: UITextField!
    @IBOutlet weak var endPointXTextField: UITextField!
    @IBOutlet weak var endPointYTextField: UITextField!
    
    // MARK: - Attributes
    
    var startColor: UIColor {
        get {
            switch startColorSegmentedControl.selectedSegmentIndex {
            case 0: return .blue
            case 1: return .green
            case 2: return .black
            default: return .clear
            }
        }
    }
    
    var endColor: UIColor {
        get {
            switch endColorSegmentedControl.selectedSegmentIndex {
            case 0: return .yellow
            case 1: return .purple
            case 2: return .red
            default: return .clear
            }
        }
    }
    
    var startPoint: CGPoint {
        get {
            guard let xString = startPointXTextField.text, let x = Double(xString) else { return .zero }
            guard let yString = startPointYTextField.text, let y = Double(yString) else { return .zero }
            return CGPoint(x: x, y: y)
        }
    }
    
    var endPoint: CGPoint {
        get {
            guard let xString = endPointXTextField.text, let x = Double(xString) else { return .zero }
            guard let yString = endPointYTextField.text, let y = Double(yString) else { return .zero }
            return CGPoint(x: x, y: y)
        }
    }
    
    // MARK: - Actions
    
    @IBAction func applyAction(_ sender: Any) {
        gradientView.gradient(startColor: startColor, endColor: endColor, startPoint: startPoint, endPoint: endPoint)
        startPointXTextField.resignFirstResponder()
        startPointYTextField.resignFirstResponder()
        endPointXTextField.resignFirstResponder()
        endPointYTextField.resignFirstResponder()
    }
    
    // MARK: - View controller methods

    override func viewDidLoad() {
        super.viewDidLoad()
        gradientView.gradient(startColor: startColor, endColor: endColor, startPoint: startPoint, endPoint: endPoint)
    }

}

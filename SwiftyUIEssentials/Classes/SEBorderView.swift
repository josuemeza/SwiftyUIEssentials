//
//  SEBorderView.swift
//  SwiftyUIEssentials
//
//  Created by Josue Meza Peña on 13-08-18.
//

import UIKit

/// Designable view with inspectable values to set border on interface builder.
@IBDesignable public class SEBorderView: UIView {
    
    // MARK: - Inspectable attributes.
    
    /// Inspectable border radious.
    @IBInspectable public var borderRadious: CGFloat = 0 {
        didSet {
            layer.cornerRadius = borderRadious
            clipsToBounds = true
        }
    }
    
    /// Inspectable border width.
    @IBInspectable public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    /// Inspectable border color
    @IBInspectable public var borderColor: UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    // MARK: - Public methods
    
    /**
     **border**
     
     Set border with color to this view.
     
     - Parameter color: Border color.
     - Parameter width: Border width.
     - Parameter radious: Border radious
     */
    public func border(_ color: UIColor = .clear, width: CGFloat = 0, radious: CGFloat = 0) {
        borderWidth = width
        borderRadious = radious
        borderColor = color
    }

}

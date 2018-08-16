//
//  SEShadowView.swift
//  Pods-SwiftyUIEssentials_Example
//
//  Created by Josue Meza Peña on 13-08-18.
//

import UIKit

/// Designable view with inspectable values to set shadow on interface builder.
@IBDesignable public class SEShadowView: UIView {
    
    // MARK: - Inspectable attributes
    
    /// Inspectable color for shadow.
    @IBInspectable public var shadowColor: UIColor = .clear {
        didSet {
            shadowDefaults { self.layer.shadowColor = self.shadowColor.cgColor }
        }
    }
    
    /// Inspectable opacity for color **(Values between 0 - 1)**.
    @IBInspectable public var shadowOpacity: Float = 1 {
        didSet {
            shadowDefaults { self.layer.shadowOpacity = self.shadowOpacity }
        }
    }
    
    /// Inspectable offset for shadow.
    @IBInspectable public var shadowOffset: CGSize = .zero {
        didSet {
            shadowDefaults { self.layer.shadowOffset = self.shadowOffset }
        }
    }
    
    /// Inspectable radious for shadow.
    @IBInspectable public var shadowRadious: CGFloat = 0 {
        didSet {
            shadowDefaults { self.layer.shadowRadius = self.shadowRadious }
        }
    }
    
    // MARK: - Public methods
    
    /**
     **shadow**
     
     Set shadow with the parameter conditions.
     
     - Parameter color: Shadow color.
     - Parameter opacity: Shadow opacity.
     - Parameter offset: Shadow offset from element.
     - Parameter radious: Shadow radious.
     */
    public func shadow(color: UIColor, opacity: Float, offset: CGSize, radious: CGFloat) {
        shadowColor = color
        shadowOpacity = opacity
        shadowOffset = offset
        shadowRadious = radious
    }
    
    // MARK: - Private methods
    
    /**
     **shadowDefaults**
     
     Set shadow default values to update inspectable attributes.
     
     - Parameter actions: Actions to set on shadow layer.
     */
    private func shadowDefaults(actions: @escaping () -> Void = {}) {
        layer.masksToBounds = false
        actions()
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
    }
    
    /// Overrided layout subviews method for apply on autolayout.
    public override func layoutSubviews() {
        super.layoutSubviews()
        shadowDefaults()
    }

}

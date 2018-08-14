//
//  SEGradientView.swift
//  SwiftyUIEssentials
//
//  Created by Josue Meza Peña on 13-08-18.
//

import UIKit

/// Designable view with inspectable values to set gradient on interface builder.
@IBDesignable public class SEGradientView: UIView {
    
    // MARK: - Private attributes
    
    private var gradientLayer = CAGradientLayer()
    private var gradientColors: [UIColor] = [.clear, .clear]
    
    // MARK: - Inspectable attributes
    
    /// Inspectable start color for gradient.
    @IBInspectable public var gradientStartColor: UIColor = .clear {
        didSet {
            gradientDefaults {
                self.gradientColors[0] = self.gradientStartColor
                self.gradientLayer.colors = self.gradientColors.map { color in color.cgColor }
                
            }
        }
    }
    
    /// Inspectable end color for gradient.
    @IBInspectable public var gradientEndColor: UIColor = .clear {
        didSet {
            self.gradientColors[1] = self.gradientEndColor
            self.gradientLayer.colors = self.gradientColors.map { color in color.cgColor }
        }
    }
    
    /// Inspectable start point for gradient **(Values between 0 - 1)**.
    @IBInspectable public var gradientStartPoint: CGPoint = .zero {
        didSet {
            gradientDefaults { self.gradientLayer.startPoint = self.gradientStartPoint }
        }
    }
    
    /// Inspectable end point for gradient **(Values between 0 - 1)**.
    @IBInspectable public var gradientEndPoint: CGPoint = .zero {
        didSet {
            gradientDefaults { self.gradientLayer.endPoint = self.gradientEndPoint }
        }
    }
    
    // MARK: - Public methods
    
    /**
     **gradient**
     
     Apply color gradient to view
     
     - Parameter startColor: Gradient start color.
     - Parameter endColor: Gradient end color.
     - Parameter startPoint: Gradient start point.
     - Parameter endPoint: Gradient end point.
     */
    public func gradient(startColor: UIColor, endColor: UIColor, startPoint: CGPoint, endPoint: CGPoint) {
        gradientStartColor = startColor
        gradientEndColor = endColor
        gradientStartPoint = startPoint
        gradientEndPoint = endPoint
    }
    
    // MARK: - Private methods
    
    /**
     **gradientDefaults**
     
     Set gradient default values to update inspectable attributes.
     
     - Parameter actions: Actions to set on gradient layer.
     */
    private func gradientDefaults(action: @escaping () -> Void = {}) {
        gradientLayer.frame = bounds
        if let current = layer.sublayers?.first, current == gradientLayer {
            current.removeFromSuperlayer()
        }
        action()
        layer.insertSublayer(gradientLayer, at: 0)
        layer.masksToBounds = true
    }
    
    /// Overrided layout subviews method for apply on autolayout.
    public override func layoutSubviews() {
        super.layoutSubviews()
        gradientDefaults()
    }

}

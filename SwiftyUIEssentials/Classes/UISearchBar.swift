//
//  UISearchBar.swift
//  SwiftyUIEssentials
//
//  Created by Josue Meza Peña on 13-08-18.
//

import UIKit

public extension UISearchBar {
    
    // MARK: - Public get attributes
    
    /// Search bar text field accessor.
    var textField: UITextField? {
        get {
            return findTextField(self)
        }
    }
    
    /// Search bar cancel button accesor.
    var cancelButton: UIButton? {
        get {
            return findCancelButton(self)
        }
    }
    
    /// Search bar background image view accessor.
    var imageView: UIImageView? {
        get {
            return findImageView(self)
        }
    }
    
    // MARK: - Private methods
    
    /**
     **findTextField**
     
     Search on bar the text field object.
     
     - Parameter view: Container to review.
     - Returns: Text field of search bar.
     */
    private func findTextField(_ view: UIView) -> UITextField? {
        for subview in view.subviews {
            if subview is UITextField {
                return subview as? UITextField
            } else if let result = findTextField(subview) {
                return result
            }
        }
        return nil
    }
    
    /**
     **findCancelButton**
     
     Search on bar the cancel button object.
     
     - Parameter view: Container to review.
     - Returns: Cancel button of search bar.
     */
    private func findCancelButton(_ view: UIView) -> UIButton? {
        for subview in view.subviews {
            if subview.isKind(of: UIButton.self), (subview as? UIButton)?.titleLabel?.text != nil {
                return subview as? UIButton
            } else if let result = findCancelButton(subview) {
                return result
            }
        }
        return nil
    }
    
    /**
     **findImageView**
     
     Search on bar the background image view object.
     
     - Parameter view: Container to review.
     - Returns: Background image view of search bar.
     */
    private func findImageView(_ view: UIView) -> UIImageView? {
        for subview in view.subviews {
            if subview.isKind(of: UIImageView.self) {
                return subview as? UIImageView
            } else if let result = findImageView(subview) {
                return result
            }
        }
        return nil
    }
    
}

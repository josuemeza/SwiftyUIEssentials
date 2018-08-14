//
//  UIView.swift
//  SwiftyUIEssentials
//
//  Created by Josue Meza Peña on 14-08-18.
//

import UIKit

public extension UIView {
    
    /**
     **screenshot**
     
     Capture an image with the screen current status.
     
     - Parameter shouldSave: True to save the screenshot on user photo library. (Default: false)
     - Returns: Captured screenshot.
     */
    public static func screenshot(_ shouldSave: Bool = false) -> UIImage? {
        var screenshotImage: UIImage?
        let layer = UIApplication.shared.keyWindow!.layer
        let scale = UIScreen.main.scale
        UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, scale)
        guard let context = UIGraphicsGetCurrentContext() else {return nil}
        layer.render(in:context)
        screenshotImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        if let image = screenshotImage, shouldSave {
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        }
        return screenshotImage
    }
}

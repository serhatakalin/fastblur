//
//  blur.swift
//  FastBlur
//
//  Created by Serhat Akalin on 7.05.2019.
//  Copyright © 2019 Serhat Akalin. All rights reserved.
//

import UIKit

extension UIImageView
{
    func appendBlur()
    {
        /// Append UIBlurEffect to UIImageView
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurEffectView)
    }
}

extension UIView {
    
    /// Remove UIBlurEffect from UIView
    func removeBlur() {
        let blurredEffectViews = self.subviews.filter{$0 is UIVisualEffectView}
        blurredEffectViews.forEach{ blurView in
            blurView.removeFromSuperview()
        }
    }
}

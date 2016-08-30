//
//  PenumbraButton.swift
//  Penumbra
//
//  Created by Caleb Stultz on 8/30/16.
//  Copyright © 2016 Caleb Stultz. All rights reserved.
//

import UIKit

class PenumbraButton: UIButton {
    /// The corner radius of the `ShadowView`, inspectable in Interface Builder
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.updateProperties()
        }
    }
    /// The shadow color of the `ShadowView`, inspectable in Interface Builder
    @IBInspectable var shadowColor: UIColor = UIColor.black() {
        didSet {
            self.updateProperties()
        }
    }
    /// The shadow offset of the `ShadowView`, inspectable in Interface Builder
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0.0, height: 0.0) {
        didSet {
            self.updateProperties()
        }
    }
    /// The shadow radius of the `ShadowView`, inspectable in Interface Builder
    @IBInspectable var shadowRadius: CGFloat = 10.0 {
        didSet {
            shadowRadius = layer.frame.size.height / 5
            self.updateProperties()
        }
    }
    /// The shadow opacity of the `ShadowView`, inspectable in Interface Builder
    @IBInspectable var shadowOpacity: Float = 0.6 {
        didSet {
            self.updateProperties()
        }
    }
    
    /**
     Masks the layer to it's bounds and updates the layer properties and shadow path.
     */
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.masksToBounds = false
        self.updateProperties()
        self.updateShadowPath()
    }
    
    /**
     Updates all layer properties according to the public properties of the `ShadowView`.
     */
    private func updateProperties() {
        self.layer.cornerRadius = self.cornerRadius
        self.layer.shadowColor = self.shadowColor.cgColor
        self.layer.shadowOffset = self.shadowOffset
        self.layer.shadowRadius = self.shadowRadius
        self.layer.shadowOpacity = self.shadowOpacity
    }
    
    /**
     Updates the bezier path of the shadow to be the same as the layer's bounds, taking the layer's corner radius into account.
     */
    private func updateShadowPath() {
        let viewSize = layer.frame.size.width
        let shadowSize = layer.frame.size.width / 1.4
        let shadowSubtraction = (viewSize - shadowSize) / 2
        let viewRect: CGRect = CGRect(origin: CGPoint(x: (viewSize - shadowSize) - shadowSubtraction, y: self.layer.frame.size.height / 2.5), size: CGSize(width: (layer.frame.size.width / 1.4), height: (layer.frame.size.height / 2)))
        self.layer.shadowPath = UIBezierPath(roundedRect: viewRect, cornerRadius: layer.cornerRadius).cgPath
    }
    
    /**
     Updates the shadow path everytime the views frame changes.
     */
    override func layoutSubviews() {
        super.layoutSubviews()
        self.updateShadowPath()
    }
}

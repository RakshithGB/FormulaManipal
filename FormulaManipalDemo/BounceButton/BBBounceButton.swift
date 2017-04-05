//
//  ShakeButton.swift
//  eShop
//
//  Created by JAVIER CALATRAVA LLAVERIA on 18/08/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import UIKit

let ANIMATION_DURATION = 0.2


var zShadow:Bool?
var zZoom:Bool?
var zKeepHighlighted:Bool?

public extension UIButton  {

    
    // MARK : Helpers
    
    func configureButtonWithHightlightedShadowAndZoom(_ zShadowAndZoom:Bool){
        zShadow = zShadowAndZoom
        zZoom = zShadowAndZoom
        configureToSelected(false)
    }
    
    // MARK : Button states
    
    override open var isHighlighted: Bool {
        didSet {
            
            configureToSelected(isHighlighted)
            
        }
    }
    
    func configureToSelected( _ selected: Bool){
        
        if(zKeepHighlighted == true || selected == true) {
            alpha = 1.0
            if(zShadow == true){
                UIView.animate(withDuration: ANIMATION_DURATION, animations: { () -> Void in
                    self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    if(zShadow == true){
                        self.layer.shadowOpacity = 1
                    }
                })
            }
            
            if(zShadow == true){
                //layer.shadowColor = UIColor.blackColor()
                layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
                layer.shadowOpacity = 1
                layer.shadowRadius = 3
            }
        } else {
            if(zZoom == true){
                UIView.animate(withDuration: ANIMATION_DURATION, animations: { () -> Void in
                    self.transform=CGAffineTransform(scaleX: 0.85 , y: 0.85)
                })
            }
            if(zShadow == true){
                layer.shadowOpacity = 0
            }
        }
        
    }
}

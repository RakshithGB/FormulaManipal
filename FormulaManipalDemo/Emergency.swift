//
//  Emergency.swift
//  LGSideMenuControllerDemo
//
//  Created by Rakshith GB on 26/01/17.
//  Copyright © 2017 Cole Dunsby. All rights reserved.
//

class Emergency: UIViewController {
    
    
    
    @IBOutlet weak var sos: UIButton!
    
    override func viewDidLoad() {
        sos.configureButtonWithHightlightedShadowAndZoom(true)
        
    }
}

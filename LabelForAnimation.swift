//
//  LabelForAnimation.swift
//  LabelAnimation
//
//  Created by AlexanderYakovenko on 6/28/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit

class LabelForAnimation: UILabel {

    
    var color = UIColor.red
    
    
    required init?(coder aDecoder: NSCoder) {
        
        
        super.init(coder: aDecoder)!
        self.commonInit(color: color)
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit(color: color)
    }
    
    
    func commonInit(color: UIColor) {
        self.backgroundColor = color
    }
    
    
    
    
    
}

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
        self.tapAdd()
        self.frame = CGRect(origin: CGPoint(x: 60, y: 274), size: CGSize(width: 200, height: 20))
        
    }
    
    func tapAdd() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapLabel))
        tap.numberOfTapsRequired = 1
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(tap)
    }
    
    func tapLabel() {
        
        
        if self.numberOfLines == 1 {
            
            UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0, options: .curveEaseOut, animations: {
                self.replaceSizeBig()
                self.replaceNumberOfLines()
            }, completion: nil)
            
        } else {
            
            UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0, options: .curveEaseOut, animations: {
                self.replaceSizeSmall()
                self.replaceNumberOfLines()
            }, completion: nil)
            
           
        }
        
    }
    
    func replaceNumberOfLines() {
        if numberOfLines == 0 {
            numberOfLines = 1
        } else {
            numberOfLines = 0
        }
    }
    
    func replaceSizeBig() {
        self.frame = CGRect(x: 60, y: 274, width: 200, height: 120)
    }
    func replaceSizeSmall() {
        self.frame = CGRect(x: 60, y: 274, width: 200, height: 20)
    }

    
}

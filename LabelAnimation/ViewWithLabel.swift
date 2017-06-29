//
//  ViewWithLabel.swift
//  LabelAnimation
//
//  Created by AlexanderYakovenko on 6/28/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit

class ViewWithLabel: UIView {

    var labelTop: UILabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 200, width: 200, height: 100))
        let label = UILabel()
        label.backgroundColor = UIColor.green
        label.text = "bla bla bla"
        label.frame = CGRect(x: 0, y: 0, width: Int(self.frame.size.width), height: Int(self.frame.size.height))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}

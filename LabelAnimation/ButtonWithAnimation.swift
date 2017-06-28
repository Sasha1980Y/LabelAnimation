//
//  ButtonWithAnimation.swift
//  LabelAnimation
//
//  Created by AlexanderYakovenko on 6/28/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit

class ButtonWithAnimation: UIButton {

    required init() {
        super.init(frame: .zero)
        backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

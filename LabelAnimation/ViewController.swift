//
//  ViewController.swift
//  LabelAnimation
//
//  Created by AlexanderYakovenko on 6/28/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit

import SpriteKit

class ViewController: UIViewController {
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    let text = "hadsbgajksfgesuygdfrqjbdkasugdsjskfhlsdifhdlsahflashlafhdlhdfklhdfldhulksdhdkuyagbjhfdslkhfkhfalskdhfaldhafl;djkshflsadhkshfklahdfkhf;khkshdwhjdl"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        
        topLabel.backgroundColor = UIColor.blue
        middleLabel.backgroundColor = UIColor.green
        bottomLabel.backgroundColor = UIColor.cyan
        
        topLabel.text = text
        middleLabel.text = text
        bottomLabel.text = text
        
        
        topLabel.tag = 1001
        middleLabel.tag = 1002
        bottomLabel.tag = 1003
        
        // tup top label
        let tapTop: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap(sender:)))
        //tapTop.numberOfTapsRequired = 1 // default
        topLabel.isUserInteractionEnabled = true
        topLabel.addGestureRecognizer(tapTop)
        
        // tup middle label
        let tapMiddle: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap(sender:)))
        //tapTop.numberOfTapsRequired = 1 // default
        middleLabel.isUserInteractionEnabled = true
        middleLabel.addGestureRecognizer(tapMiddle)

        // tup bottom label
        let tapBottom: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap(sender:)))
        //tapTop.numberOfTapsRequired = 1 // default
        bottomLabel.isUserInteractionEnabled = true
        bottomLabel.addGestureRecognizer(tapBottom)
        
    }
    // not necessary
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.33, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10.0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    func tap(sender: UITapGestureRecognizer) {
        
        guard let caseTage = sender.view?.tag else {return}
        switch caseTage {
        case 1001: topLabel.replaceNumberOfLines()
        case 1002: middleLabel.replaceNumberOfLines()
        case 1003: bottomLabel.replaceNumberOfLines()
            
        default:
            return
        }
        view.anim()
        
    }
}
extension UILabel {
    func replaceNumberOfLines() {
        if numberOfLines == 0 {
            numberOfLines = 1
        } else {
            numberOfLines = 0
        }
    }
}
extension UIView {
    func anim() {
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0, options: .curveEaseOut, animations: {
            self.layoutIfNeeded()
        }, completion: nil)
    }
}



/*
 // function for help info
 func tupLabel() {
 
 if !isBigTopLabel {
 
 // turn to angle
 //topLabel.transform = CGAffineTransform(rotationAngle: 0.12)
 //topLabel.transform = CGAffineTransform(translationX: 100.0, y: 2.0)
 //topLabel.transform = CGAffineTransform.identity
 
 topLabel.numberOfLines = 0
 
 
 // begin animation for label
 
 UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0, options: .curveEaseOut, animations: {
 
 self.view.layoutIfNeeded()
 
 }, completion: nil)
 
 // end
 isBigTopLabel = true
 } else {
 topLabel.numberOfLines = 1
 isBigTopLabel = false
 
 // begin
 UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0, options: .curveEaseOut, animations: {
 
 self.view.layoutIfNeeded()
 }, completion: nil)
 
 // end
 }
 
 }
 */

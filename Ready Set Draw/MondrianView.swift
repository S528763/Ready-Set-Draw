//
//  MondrianView.swift
//  Ready Set Draw
//
//  Created by Srimat Tirumala Pallerlamudi,Aditya on 11/14/17.
//  Copyright © 2017 Srimat Tirumala Pallerlamudi,Aditya. All rights reserved.
//

import UIKit

@IBDesignable class MondrianView: UIView {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    //changed indigo to black
    let pickColor:[UIColor] = [.red, .orange, .yellow, .green, .blue, .black, .purple]
    
    override func draw(_ rect: CGRect) {
        if num > 0 {
            for i in 1 ... num {
                let x = Int(arc4random_uniform(170))
                let y = Int(arc4random_uniform(200))
                let width = Int(arc4random_uniform(170))
                let height = Int(arc4random_uniform(200))
                let randomRectangle = UIBezierPath(rect: CGRect(x:  x, y:  y, width:  width, height:  height))
                pickColor[Int(arc4random_uniform(6))].setFill()
                randomRectangle.fill()
            }
        }
    }
    
}

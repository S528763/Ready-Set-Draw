//
//  ClockView.swift
//  Ready Set Draw
//
//  Created by Srimat Tirumala Pallerlamudi,Aditya on 11/15/17.
//  Copyright © 2017 Srimat Tirumala Pallerlamudi,Aditya. All rights reserved.
//

import UIKit

@IBDesignable class ClockView: UIView {
    
    let setVC = SetViewController()

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    
    
    override func draw(_ rect: CGRect) {
        
        let date = Date()
        let calendar = Calendar.current
        let curhour = calendar.component(.hour, from: date)
        let curminute = calendar.component(.minute, from: date)
        
        
        
        let bezier = UIBezierPath()
        let size = self.frame.size
        
        let center = CGPoint(x: size.width/2, y: size.height/2)
        
        bezier.addArc(withCenter: CGPoint(x:size.width/2,y:size.height/2), radius: size.width/2 - 10, startAngle: 0, endAngle: .pi*2 , clockwise: true)
        
        UIColor.black.setStroke()
        bezier.lineWidth = 3
        
        
        
        bezier.move(to: CGPoint(x:size.width/2,y:size.height/2))
        
        
        bezier.addArc(withCenter: CGPoint(x: size.width/2, y: size.height/2), radius: size.width/5, startAngle: .pi * 3/2, endAngle: CGFloat(.pi/30 * Double(curhour+6)), clockwise: true)
        
        UIColor.white.setStroke()
        bezier.addLine(to: center)
        UIColor.black.setStroke()
        
//        bezier.stroke()
    }

}

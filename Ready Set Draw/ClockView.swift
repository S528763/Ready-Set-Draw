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
        
        let bzClock = UIBezierPath()
        let size = self.frame.size
        let center = CGPoint(x: size.width/2, y: size.height/2)
        
        bzClock.addArc(withCenter: CGPoint(x:size.width/2,y:size.height/2), radius: size.width/2 - 10, startAngle: 0, endAngle: .pi*2 , clockwise: true)
        bzClock.lineWidth = 3
        bzClock.stroke()
        
        let bzHour = UIBezierPath()
        let bzArcHr = UIBezierPath()
        bzArcHr.addArc(withCenter: CGPoint(x: size.width/2, y: size.height/2), radius: size.width/5, startAngle: 0, endAngle: CGFloat(.pi * (Double(curhour - 3)/6)), clockwise: true)
        bzHour.move(to: bzArcHr.currentPoint)
        bzHour.addLine(to: center)
        bzHour.lineWidth = 3
        bzHour.stroke()
        
        let bzMinute = UIBezierPath()
        let bzArcMin = UIBezierPath()
        bzArcMin.addArc(withCenter: CGPoint(x: size.width/2, y: size.height/2), radius: size.width/3.5, startAngle: 0, endAngle: CGFloat(.pi * Double(curminute/5 - 3)/6), clockwise: true)
        bzMinute.move(to: bzArcMin.currentPoint)
        bzMinute.addLine(to: center)
        
        bzMinute.lineWidth = 3
        bzMinute.stroke()
    }
    
}

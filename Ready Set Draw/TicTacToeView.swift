//
//  TicTacToeView.swift
//  Ready Set Draw
//
//  Created by Srimat Tirumala Pallerlamudi,Aditya on 11/14/17.
//  Copyright © 2017 Srimat Tirumala Pallerlamudi,Aditya. All rights reserved.
//

import UIKit

@IBDesignable class TicTacToeView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    subscript(x: Int, y: Int) -> Character {
        get {
            return "X"
        }
        set {
            
        }
    }

    
//    let ticTacToe = TicTacToe()
//    ticTacToe[0][0]

    override func draw(_ rect: CGRect) {
        
        let bezier = UIBezierPath()
        let size = self.frame.size
        
        bezier.move(to:CGPoint(x:30.0,y:size.height/3))
        bezier.addLine(to: CGPoint(x:(size.width-30), y:size.height/3))
        bezier.move(to:CGPoint(x:30.0,y:size.height*2/3))
        bezier.addLine(to: CGPoint(x:(size.width-30), y:size.height*2/3))
        bezier.move(to:CGPoint(x:size.width/3,y:30.0))
        bezier.addLine(to: CGPoint(x:size.width/3, y:size.height-30))
        bezier.move(to:CGPoint(x:size.width*2/3,y:30.0))
        bezier.addLine(to: CGPoint(x:size.width*2/3, y:size.height-30))
        
        UIColor.black.setStroke()
        bezier.lineWidth = 5
        
        bezier.stroke()
        
        if true {
            bezier.move(to:CGPoint(x:30.0,y:30.0))
            bezier.addLine(to: CGPoint(x:(size.width-30), y:size.height/3))
        }
        
        
    }

}

//
//  FirstViewController.swift
//  Ready Set Draw
//
//  Created by Srimat Tirumala Pallerlamudi,Aditya on 11/12/17.
//  Copyright © 2017 Srimat Tirumala Pallerlamudi,Aditya. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var num1:UILabel!
    @IBOutlet weak var num2:UILabel!
    @IBOutlet weak var num3:UILabel!
    @IBOutlet weak var num4:UILabel!
    @IBOutlet weak var num5:UILabel!
    @IBOutlet weak var num6:UILabel!
    @IBOutlet weak var num7:UILabel!
    @IBOutlet weak var num8:UILabel!
    @IBOutlet weak var num9:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tictactoe = TicTacToeView()
       // tictactoe[0][0] = "X"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


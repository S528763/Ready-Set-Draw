//
//  FirstViewController.swift
//  Ready Set Draw
//
//  Created by Srimat Tirumala Pallerlamudi,Aditya on 11/12/17.
//  Copyright © 2017 Srimat Tirumala Pallerlamudi,Aditya. All rights reserved.
//

import UIKit

var data:[String] = []

class ReadyViewController: UIViewController {
    
    @IBOutlet weak var dataTF:UITextField!
    
    @IBOutlet weak var ticTacToe: TicTacToeView!
    
    @IBAction func go(_ sender: Any) {
        data = splitData(series: dataTF.text!)
        ticTacToe.setNeedsDisplay()
    }
    
    func splitData(series:String) -> [String] {
        var ticTacToeData:[String] = []
        for str in series.components(separatedBy: " "){
            ticTacToeData.append(str)
        }
        return ticTacToeData
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   num1.text = tictactoe[0][0]
       // tictactoe[0][0] = "X"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


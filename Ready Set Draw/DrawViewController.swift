//
//  DrawViewController.swift
//  Ready Set Draw
//
//  Created by Srimat Tirumala Pallerlamudi,Aditya on 11/15/17.
//  Copyright © 2017 Srimat Tirumala Pallerlamudi,Aditya. All rights reserved.
//

import UIKit

var num = 0
class DrawViewController: UIViewController {
    
    @IBOutlet weak var numOfRectangles: UITextField!
    @IBOutlet weak var mondrian: MondrianView!
    
    @IBAction func drawRectangles(_ sender: Any) {
        if Int(numOfRectangles.text!) == nil {
            let alert = UIAlertController(title: "Oops!",
                                          message: "Please enter a valid number",
                                          preferredStyle: .alert)
            let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
            alert.addAction(cancel)
            if Int(numOfRectangles.text!) == nil{
                present(alert, animated: true, completion: nil)
            }
        }
        else {
            num = Int(numOfRectangles.text!)!
            mondrian.setNeedsDisplay()
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

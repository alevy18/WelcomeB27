//
//  ViewController.swift
//  WelcomeB27
//
//  Created by Aaron Levy on 3/17/21.
//

import UIKit

class ViewController: UIViewController {
    
    var countClicked: Int = 0
    var upDown: Bool = true
    
    @IBOutlet weak var lblHello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func btnClick(_ sender: Any) {
        if upDown == true {
            countClicked += 1
        }else {
            countClicked -= 1
        }
        if countClicked == 15 {
            upDown = false
        }
        if countClicked == 0 {
            upDown = true
        }
        
        lblHello.text = String(countClicked)
        
        
        //self.view.backgroundColor = UIColor.randomColor()
        
        self.view.backgroundColor = UIColor(hue: CGFloat(countClicked) / 15, saturation:1, brightness: 1, alpha: 1)
    }
    
}

extension UIColor {
    static func randomColor(saturation: CGFloat = 1, brightness: CGFloat = 1, alpha: CGFloat = 1) -> UIColor {
        let hue = CGFloat(arc4random_uniform(361)) / 360.0
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
    }
}

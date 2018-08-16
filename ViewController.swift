//
//  ViewController.swift
//  DemoAnimation
//
//  Created by admin on 14/08/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit
import BAFluidView

class ViewController: UIViewController {

    @IBOutlet weak var testview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let demoview = BAFluidView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), startElevation: 0.35)
        
        demoview?.fillColor = UIColor.red
//        demoview.fillAutoReverse = false
        demoview?.strokeColor = UIColor.clear
        demoview?.keepStationary()
        
        demoview?.fill(to: 0.35)
        demoview?.startAnimation()
    
       self.testview.addSubview(demoview!)
        
testview.bringSubview(toFront: self.view)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  starwar
//
//  Created by Jack Huang on 2018/7/30.
//  Copyright © 2018 Jack Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Redslider: UISlider!
    @IBOutlet weak var Greenslider: UISlider!
    @IBOutlet weak var Blueslider: UISlider!
    @IBOutlet weak var Alphaslider: UISlider!
    @IBOutlet weak var StarladyImageview: UIImageView!
    
    @IBAction func RandomColor(_ sender: UIButton) {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        let alpha = CGFloat.random(in: 0...1)
        StarladyImageview.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    @IBAction func Colorchange(_ sender: UISlider) {
        StarladyImageview.backgroundColor = UIColor(red: CGFloat(Redslider.value), green: CGFloat(Greenslider.value), blue: CGFloat(Blueslider.value), alpha: CGFloat(Alphaslider.value))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


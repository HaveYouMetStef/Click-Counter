//
//  ViewController.swift
//  Click Counter
//
//  Created by Stef Castillo on 12/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var labelTwo: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.yellow
        
        //label
        let label = UILabel()
        label.frame = CGRect(x: 150, y:150, width:60, height:60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        //label 2
        let labelTwo = UILabel()
        label.frame = CGRect(x: 150, y:150, width:60, height:60)
        label.text = "0"
        view.addSubview(label)
        self.labelTwo = label
        
        
        //button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        //buttonTwo
        let buttonTwo = UIButton()
        buttonTwo.frame = CGRect(x: 100, y: 300, width: 60, height: 60)
        buttonTwo.setTitle("Reduce Click", for: .normal)
        buttonTwo.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(buttonTwo)
        
        //target action
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        buttonTwo.addTarget(self, action: #selector(ViewController.reduceCount), for: UIControl.Event.touchUpInside)
    
    }
    
     @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @objc func reduceCount() {
       self.count -= 1
       self.label.text = "\(self.count)"
    }

}


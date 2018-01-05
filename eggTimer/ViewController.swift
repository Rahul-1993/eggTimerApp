//
//  ViewController.swift
//  eggTimer
//
//  Created by Rahul Avale on 9/19/17.
//  Copyright © 2017 Rahul Avale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210
    
    @objc func decreaseTimer(){
        
        time -= 1
        if time >= 0 {
        timerLabel.text = String(time)
        } else {
            
            timer.invalidate()
        }
    }
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func pauseButton(_ sender: Any) {
        
        timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func plusTen(_ sender: Any) {
        
        time += 10
        timerLabel.text = String(time)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        time = 210
        timerLabel.text = String(time)
    
    }
    
    @IBAction func minusTen(_ sender: Any) {
        if time > 10 {
        time -= 10
        timerLabel.text = String(time)
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


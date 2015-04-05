//
//  ViewController.swift
//  Timer
//
//  Created by Tyler Poland on 4/4/15.
//  Copyright (c) 2015 Tyler Poland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var timer = NSTimer()
    @IBOutlet weak var timerLabel: UILabel!

    @IBAction func playButtonPressed(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("timerResult"), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    
    
    @IBAction func pauseButtonPressed(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func stopButtonPressed(sender: AnyObject) {
        timer.invalidate()
        count = 0
        timerLabel.text = "\(count)"
    }
    
    func timerResult() {
        count++
        timerLabel.text = "\(count)"
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


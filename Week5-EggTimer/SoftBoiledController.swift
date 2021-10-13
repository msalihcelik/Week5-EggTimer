//
//  softBoiledController.swift
//  Week5-EggTimer
//
//  Created by Mehmet Salih ÇELİK on 13.10.2021.
//

import UIKit

final class SoftBoiledController: UIViewController {

    @IBOutlet weak var countDownLabel: UILabel!
    private var timer = Timer()
    private var time = 240

    override func viewDidLoad() {
        super.viewDidLoad()
        countDownLabel.text = timeString(time: time)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc
    private func timerFunction() {
        time -= 1
        countDownLabel.text = timeString(time: time)
        if time == 0 {
            countDownLabel.text = "YUMURTA OLDU!"
            timer.invalidate()
        }
        
    }
    
    private func timeString(time: Int) -> String {
        let minutes = time / 60 % 60
        let seconds = time % 60
        return String(format:"%02i:%02i", minutes, seconds)
    }
    
    
  

}

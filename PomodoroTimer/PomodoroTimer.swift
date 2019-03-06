//
//  WorkSessionTimer.swift
//  PomodoroTimer
//
//  Created by Sam Burkhard on 3/5/19.
//  Copyright © 2019 Sam Burkhard. All rights reserved.
//

import Foundation

class PomodoroTimer {
    var timer: Timer? = nil
    var duration: TimeInterval = 0
    var elapsedTime: TimeInterval = 0
    var isRunning: Bool {
        return timer != nil && elapsedTime > 0
    }
    var isPaused: Bool {
        return timer == nil && elapsedTime > 0
    }
    var isStopped: Bool {
        return timer == nil && elapsedTime == 0
    }
    
    @objc func updateTime() {
        
    }
    
    func startTimer() {
        elapsedTime = 0
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
}

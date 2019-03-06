//
//  WorkSessionTimer.swift
//  PomodoroTimer
//
//  Created by Sam Burkhard on 3/5/19.
//  Copyright © 2019 Sam Burkhard. All rights reserved.
//

import Foundation

protocol PomodoroTimerProtocol {
    func timeRemainingOnTimer(_ timer: PomodoroTimer, timeRemaining: TimeInterval)
    func timerHasFinished(_ timer: PomodoroTimer)
}

class PomodoroTimer {
    var delegate: PomodoroTimerProtocol?
    var timer: Timer? = nil
    var startTime: Date?
    var duration: TimeInterval = 360
    var elapsedTime: TimeInterval = 0
    
    var isStopped: Bool {
        return timer == nil && elapsedTime == 0
    }
    
    var isPaused: Bool {
        return timer == nil && elapsedTime > 0
    }
}

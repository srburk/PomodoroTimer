import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    let defaultWorkSessionTime = 1500 // 25 Minutes
    let defaultShortBreakTime = 300 // 5 Minutes
    let defaultLongBreakTime = 1200 // 20 Minutes
    var passedSeconds = 0 // Seconds
    var sessionCount = 0
    
    // User customizable variables
    var workSessionTime = 0
    var shortBreakTime = 0
    var longBreakTime = 0
    var sessionsToLongBreak = 4
    var workSessionIdentifier = "⏰"
    var shortBreakIdentifier = "🏖"
    var longBreakIdentifier = "🎉"
    
    var timerIdentifier = NSMenuItem()
    var beginSessionButton = NSMenuItem()
    var pauseSessionButton = NSMenuItem()
    var unpauseSessionButton = NSMenuItem()
    var stopSessionButton = NSMenuItem()
    var skipSessionButton = NSMenuItem()
    var preferencesButton = NSMenuItem()
    
    var pomodoroTimer = PomodoroTimer()

    func applicationDidFinishLaunching(_ notification: Notification) {
        guard let button = statusItem.button else {return}
        button.target = self
        statusItem.menu = NSMenu()
    }
    
    func buildMenu() {
        statusItem.menu!.removeAllItems()
        let menu = NSMenu()
        beginSessionButton = NSMenuItem(title: "Begin", action: #selector(beginSession), keyEquivalent: "")
        pauseSessionButton = NSMenuItem(title: "Pause", action: #selector(pauseSession), keyEquivalent: "")
        stopSessionButton = NSMenuItem(title: "Stop", action: #selector(stopSession), keyEquivalent: "")
        preferencesButton = NSMenuItem(title: "Preferences...", action: #selector(showPreferences), keyEquivalent: "")
        
//        switch activeTimer {
//        case .workSession:
//            timerIdentifier = NSMenuItem(title: "Work Session  \(workSessionIdentifier)", action: nil, keyEquivalent: "")
//        case .shortBreak:
//            timerIdentifier = NSMenuItem(title: "Short Break  \(shortBreakIdentifier)", action: nil, keyEquivalent: "")
//        case .longBreak:
//            timerIdentifier = NSMenuItem(title: "Long Break  \(longBreakIdentifier)", action: nil, keyEquivalent: "")
//        }
        
//        switch activeTimerState {
//        case .on:
//            menu.addItem(timerIdentifier)
//            menu.addItem(pauseSessionButton)
//            menu.addItem(stopSessionButton)
//            pauseSessionButton.title = "Pause"
//        case .paused:
//            menu.addItem(timerIdentifier)
//            menu.addItem(pauseSessionButton)
//            menu.addItem(stopSessionButton)
//            pauseSessionButton.title = "Unpause"
//        case .off:
//            menu.addItem(timerIdentifier)
//            menu.addItem(beginSessionButton)
//        }
        
        menu.addItem(.separator())
        menu.addItem(preferencesButton)
        menu.addItem(withTitle: "Quit", action: #selector(NSApplication.terminate), keyEquivalent: "")
        
        timerIdentifier.state = .off
        statusItem.menu = menu
    }
    
    @objc func beginSession() {

    }
    
    @objc func pauseSession() {

    }
    
    @objc func stopSession() {

    }
    
    @objc func showPreferences() {
        
    }

}
        
//        buildMenu()
//        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    
//
//    @objc func updateTime() {
//        buildMenu()
//        guard let button = statusItem.button else {return}
//        var activeTimerLength = 0
//
//        switch activeTimer {
//            case .workSession:
//                if workSessionTime != 0 {
//                    activeTimerLength = workSessionTime
//                } else {
//                    activeTimerLength = defaultWorkSessionTime
//                }
//            case .shortBreak:
//                if shortBreakTime != 0 {
//                    activeTimerLength = shortBreakTime
//                } else {
//                    activeTimerLength = defaultShortBreakTime
//                }
//            case .longBreak:
//                if longBreakTime != 0 {
//                    activeTimerLength = longBreakTime
//                } else {
//                    activeTimerLength = defaultLongBreakTime
//                }
//        }
//
//        switch activeTimerState {
//            case .on:
//                if passedSeconds != activeTimerLength {
//                    passedSeconds += 1
//                    button.title = "\(timeFormatted(activeTimerLength - passedSeconds))"
//                } else {
//                    sessionManager()
//                }
//            case .paused:
//                button.title = "\(timeFormatted(activeTimerLength - passedSeconds))"
//            case .off:
//                passedSeconds = 0
//                button.title = "\(timeFormatted(activeTimerLength))"
//        }
//    }
//
//    func sessionManager() {
//        switch activeTimer {
//            case .workSession:
//                if sessionCount == sessionsToLongBreak {
//                    activeTimer = .longBreak
//                    sessionCount = 0
//                } else {
//                    activeTimer = .shortBreak
//                    sessionCount += 1
//            }
//            case .shortBreak:
//                activeTimer = .workSession
//            case .longBreak:
//                activeTimer = .workSession
//        }
//        activeTimerState = .off
//    }
//


//
//  AppController.swift
//  timerr
//
//  Created by Jimmy on 5/17/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class AppController: UIViewController, ScreenControllerProtocol {
    
    private let appView = AppView()
    public let stopWatch = StopWatchDisplay()
    private var startTime: Double?
    private var timer: Timer?
    private let timeObj = TimeObj()
    private var isRunning = false
    private var offset = 0.0
    public let leftButton = TimerButton(type: .reset)
    public let rightButton = TimerButton(type: .start)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavbar()
        appView.setController(self)
        self.view.addSubview(appView.view)
//        startStopWatch()
        setupEventHandlers()
    }
    
    func setupNavbar() {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    private func setupEventHandlers() {
        leftButton.addTarget(self, action: #selector(handleLeftButtonPressed), for: .touchUpInside)
        rightButton.addTarget(self, action: #selector(handleRightButtonPressed), for: .touchUpInside)
    }
    
    @objc private func handleLeftButtonPressed() {
        clearStopWatch()
    }
    
    @objc private func handleRightButtonPressed() {
        if isRunning {
            stopStopWatch()
            rightButton.setButtonStyle(.start)
            isRunning = false
        } else {
            startStopWatch()
            rightButton.setButtonStyle(.stop)
            isRunning = true
        }
    }
    
    func startStopWatch() {
        startTime = Date().timeIntervalSince1970
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { timer in
            let timeInSeconds: Double = Date().timeIntervalSince1970 - self.startTime!
            let updatedTime = self.timeObj.setTime(timeInSeconds: timeInSeconds + self.offset)
            self.stopWatch.setTime(time: updatedTime.toString())
        }
    }
    
    func stopStopWatch() {
        offset = timeObj.getTime()
        timer?.invalidate()
    }
    
    func clearStopWatch() {
        timer?.invalidate()
        let _ = timeObj.setTime(timeInSeconds: 0.0)
        stopWatch.clearTime()
        offset = 0.0
    }
    
    func onDateChange(date: Date) {
        print(date)
    }
    
    
    
}

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appView.setController(self)
        self.view.addSubview(appView.view)
        startStopWatch()
    }
    
    func setupNavbar() {
        self.title = "Timerr"
    }
    
    func startStopWatch() {
        startTime = Date().timeIntervalSince1970
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { timer in
            let timeInSeconds: Double = Date().timeIntervalSince1970 - self.startTime!
            let updatedTime = self.timeObj.setTime(timeInSeconds: timeInSeconds)
            self.stopWatch.setTime(time: updatedTime.toString())
        }
    }
    
    func onDateChange(date: Date) {
        print(date)
    }
    
    
    
}
